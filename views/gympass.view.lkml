view: gympass {
  label: "Gympass"
  derived_table: {
    indexes: ["id"]
    sql:
SELECT
p.associate_id
,p.occurrence_at
,p.service_id
,a.beneficiary_id
,s.name
,p.id
FROM gympass.practice p
LEFT JOIN gympass.associates a ON (p.associate_id = a.id)
LEFT JOIN gympass.services s ON (p.service_id = s.id)
        ;;
    persist_for: "2 hours"
  }

  dimension_group: occurrence_at {
    label: "Data"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."occurrence_at" ;;
  }

  dimension: name {
    label: "Atividade"
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: beneficiary_id {
    type: number
    hidden: yes
    sql: ${TABLE}."beneficiary_id" ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."id" ;;
  }

  measure: count_total {
    alias: [count]
    type: count
  }
}
