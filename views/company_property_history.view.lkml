view: company_property_history {
  sql_table_name: hubspot.company_property_history ;;

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}."_fivetran_synced" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."company_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_id {
    type: string
    sql: ${TABLE}."source_id" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."value" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
