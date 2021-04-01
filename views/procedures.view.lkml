view: procedures {
  sql_table_name: datawarehouse.procedures ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: condition_id {
    type: number
    sql: ${TABLE}."condition_id" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."cost" ;;
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

  dimension: life_id {
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: modifier_concept_id {
    type: number
    sql: ${TABLE}."modifier_concept_id" ;;
  }

  dimension: modifier_source_value {
    type: string
    sql: ${TABLE}."modifier_source_value" ;;
  }

  dimension: modifier_synonym_id {
    type: number
    sql: ${TABLE}."modifier_synonym_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension_group: occurrence {
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
    sql: ${TABLE}."occurrence_at" ;;
  }

  dimension: procedure_concept_id {
    type: number
    sql: ${TABLE}."procedure_concept_id" ;;
  }

  dimension: procedure_source_value {
    type: string
    sql: ${TABLE}."procedure_source_value" ;;
  }

  dimension: procedure_synonym_id {
    type: number
    sql: ${TABLE}."procedure_synonym_id" ;;
  }

  dimension: procedure_type_concept_id {
    type: number
    sql: ${TABLE}."procedure_type_concept_id" ;;
  }

  dimension: procedure_type_source_value {
    type: string
    sql: ${TABLE}."procedure_type_source_value" ;;
  }

  dimension: procedure_type_synonym_id {
    type: number
    sql: ${TABLE}."procedure_type_synonym_id" ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}."provider_id" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
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
    drill_fields: [id, name, episodes.parent_episode_id]
  }
}
