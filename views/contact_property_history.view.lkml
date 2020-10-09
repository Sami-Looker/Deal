view: contact_property_history {
  sql_table_name: hubspot.contact_property_history ;;

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}."_fivetran_synced" ;;
  }

  dimension: contact_id {
    hidden: yes
    type: number
    sql: ${TABLE}."contact_id" ;;
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
    hidden: yes
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
