view: episodes {
  sql_table_name: datawarehouse.episodes ;;
  drill_fields: [parent_episode_id]

  dimension: parent_episode_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."parent_episode_id" ;;
  }

  dimension: admitted_concept_id {
    type: number
    sql: ${TABLE}."admitted_concept_id" ;;
  }

  dimension: admitted_source_value {
    type: string
    sql: ${TABLE}."admitted_source_value" ;;
  }

  dimension: admitted_synonym_id {
    type: number
    sql: ${TABLE}."admitted_synonym_id" ;;
  }

  dimension_group: application {
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
    sql: ${TABLE}."application_at" ;;
  }

  dimension_group: auth_approval {
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
    sql: ${TABLE}."auth_approval_at" ;;
  }

  dimension_group: auth_closure {
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
    sql: ${TABLE}."auth_closure_at" ;;
  }

  dimension_group: auth_request {
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
    sql: ${TABLE}."auth_request_at" ;;
  }

  dimension: auth_type_concept_id {
    type: number
    sql: ${TABLE}."auth_type_concept_id" ;;
  }

  dimension: auth_type_source_value {
    type: string
    sql: ${TABLE}."auth_type_source_value" ;;
  }

  dimension: auth_type_synonym_id {
    type: number
    sql: ${TABLE}."auth_type_synonym_id" ;;
  }

  dimension: beneficiary_id {
    type: number
    sql: ${TABLE}."beneficiary_id" ;;
  }

  dimension: care_site_id {
    type: number
    sql: ${TABLE}."care_site_id" ;;
  }

  dimension: caresite_executor_id {
    type: number
    sql: ${TABLE}."caresite_executor_id" ;;
  }

  dimension: caresite_requester_id {
    type: number
    sql: ${TABLE}."caresite_requester_id" ;;
  }

  dimension: child_episode_id {
    type: number
    sql: ${TABLE}."child_episode_id" ;;
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

  dimension: discharge_concept_id {
    type: number
    sql: ${TABLE}."discharge_concept_id" ;;
  }

  dimension: discharge_source_value {
    type: string
    sql: ${TABLE}."discharge_source_value" ;;
  }

  dimension: discharge_synonym_id {
    type: number
    sql: ${TABLE}."discharge_synonym_id" ;;
  }

  dimension: episode_concept_id {
    type: number
    sql: ${TABLE}."episode_concept_id" ;;
  }

  dimension: episode_source_value {
    type: string
    sql: ${TABLE}."episode_source_value" ;;
  }

  dimension: episode_synonym_id {
    type: number
    sql: ${TABLE}."episode_synonym_id" ;;
  }

  dimension: episode_type_concept_id {
    type: number
    sql: ${TABLE}."episode_type_concept_id" ;;
  }

  dimension: episode_type_source_value {
    type: string
    sql: ${TABLE}."episode_type_source_value" ;;
  }

  dimension: episode_type_synonym_id {
    type: number
    sql: ${TABLE}."episode_type_synonym_id" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: interaction_cost {
    type: number
    sql: ${TABLE}."interaction_cost" ;;
  }

  dimension: life_id {
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: provider_requester_id {
    type: number
    sql: ${TABLE}."provider_requester_id" ;;
  }

  dimension: specialty_concept_id {
    type: number
    sql: ${TABLE}."specialty_concept_id" ;;
  }

  dimension: specialty_source_value {
    type: string
    sql: ${TABLE}."specialty_source_value" ;;
  }

  dimension: specialty_synonym_id {
    type: number
    sql: ${TABLE}."specialty_synonym_id" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_at" ;;
  }

  dimension_group: stop {
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
    sql: ${TABLE}."stop_at" ;;
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
    drill_fields: [parent_episode_id, invoices.count, procedures.count]
  }
}
