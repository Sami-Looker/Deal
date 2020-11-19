view: companies_primary_activity {
  sql_table_name: hiring.companies_primary_activity ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
