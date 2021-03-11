view: beneficiaries_dw {
  sql_table_name: datawarehouse.beneficiaries ;;

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

  dimension: grace_period_elective_surgeries {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_period_elective_surgeries" ;;
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

  dimension: grace_type_id {
    hidden: yes
    type: number
    sql: ${TABLE}."grace_type_id" ;;
  }

  dimension: health_plan_id {
    hidden: yes
    type: number
    sql: ${TABLE}."health_plan_id" ;;
  }

  dimension: life_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: status_source_value {
    hidden: yes
    type: string
    sql: ${TABLE}."status_source_value" ;;
  }
}
