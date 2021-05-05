# All the dimensions in this view are hidden

view: deal_property_history {
  sql_table_name: hubspotgro.deal_property_history ;;

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

  dimension: deal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."deal_id" ;;
  }


# How much time was spent in
# # SQL -> Cotação - Find time in Cotacao?
# # Contratação -> Cotação

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: source {
    hidden: yes
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_id {
    hidden: yes
    type: string
    sql: ${TABLE}."source_id" ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp" ;;
  }

  dimension: value {
    hidden: yes
    type: string
    sql: ${TABLE}."value" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [name]
  }
}
