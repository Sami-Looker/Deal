view: invoices {
  sql_table_name: datawarehouse.invoices ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: authorization_approval {
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
    sql: ${TABLE}."authorization_approval_at" ;;
  }

  dimension_group: authorization_closure {
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
    sql: ${TABLE}."authorization_closure_at" ;;
  }

  dimension_group: authorization_request {
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
    sql: ${TABLE}."authorization_request_at" ;;
  }

  dimension: authorization_type_concept_id {
    type: number
    sql: ${TABLE}."authorization_type_concept_id" ;;
  }

  dimension: authorization_type_source_value {
    type: string
    sql: ${TABLE}."authorization_type_source_value" ;;
  }

  dimension: authorization_type_synonym_id {
    type: number
    sql: ${TABLE}."authorization_type_synonym_id" ;;
  }

  dimension: caresite_executor_id {
    type: number
    sql: ${TABLE}."caresite_executor_id" ;;
  }

  dimension: caresite_requester_id {
    type: number
    sql: ${TABLE}."caresite_requester_id" ;;
  }

  dimension: careteam_executor_id {
    type: number
    sql: ${TABLE}."careteam_executor_id" ;;
  }

  dimension: careteam_requester_id {
    type: number
    sql: ${TABLE}."careteam_requester_id" ;;
  }

  dimension_group: created {
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

  dimension: episode_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."episode_id" ;;
  }

  dimension_group: execution {
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
    sql: ${TABLE}."execution_at" ;;
  }

  dimension: life_id {
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: medical_cost {
    type: number
    sql: ${TABLE}."medical_cost" ;;
  }

  dimension: nature_type_concept_id {
    type: number
    sql: ${TABLE}."nature_type_concept_id" ;;
  }

  dimension: nature_type_source_value {
    type: string
    sql: ${TABLE}."nature_type_source_value" ;;
  }

  dimension: nature_type_synonym_id {
    type: number
    sql: ${TABLE}."nature_type_synonym_id" ;;
  }

  dimension: provider_executor_id {
    type: number
    sql: ${TABLE}."provider_executor_id" ;;
  }

  dimension: provider_requester_id {
    type: number
    sql: ${TABLE}."provider_requester_id" ;;
  }

  dimension: status_concept_id {
    type: number
    sql: ${TABLE}."status_concept_id" ;;
  }

  dimension: status_source_value {
    type: string
    sql: ${TABLE}."status_source_value" ;;
  }

  dimension: status_synonym_id {
    type: number
    sql: ${TABLE}."status_synonym_id" ;;
  }

  dimension: type_concept_id {
    type: number
    sql: ${TABLE}."type_concept_id" ;;
  }

  dimension: type_source_value {
    type: string
    sql: ${TABLE}."type_source_value" ;;
  }

  dimension: type_synonym_id {
    type: number
    sql: ${TABLE}."type_synonym_id" ;;
  }

  dimension_group: updated {
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

  measure: count {
    type: count
    drill_fields: [id, episodes.parent_episode_id]
  }
}
