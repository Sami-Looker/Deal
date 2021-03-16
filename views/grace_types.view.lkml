view: grace_types {
  sql_table_name: datawarehouse.grace_types ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: grace_period_ambulatory_procedures {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_ambulatory_procedures" ;;
  }

  dimension: grace_period_appointment {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_appointment" ;;
  }

  dimension: grace_period_childbirth {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_childbirth" ;;
  }

  dimension: grace_period_exam {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_exam" ;;
  }

  dimension: grace_period_exam_special {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_exam_special" ;;
  }

  dimension: grace_period_hospitalization {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_hospitalization" ;;
  }

  dimension: grace_period_pre_existing_diseases {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_pre_existing_diseases" ;;
  }

  dimension: grace_period_therapy {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_therapy" ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension_group: start {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."start_at" ;;
  }

  dimension_group: stop {
    hidden: yes
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."stop_at" ;;
  }

  dimension_group: updated {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }
}
