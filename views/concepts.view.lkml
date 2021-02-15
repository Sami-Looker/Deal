view: concepts {
  sql_table_name: datawarehouse.concepts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: concept_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."concept_id" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: domain_id {
    type: number
    sql: ${TABLE}."domain_id" ;;
  }

  dimension: source_value {
    type: string
    sql: ${TABLE}."source_value" ;;
  }

  dimension: synonym_id {
    type: number
    sql: ${TABLE}."synonym_id" ;;
  }
}
