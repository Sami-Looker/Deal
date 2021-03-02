view: deal_pipeline {
  sql_table_name: _hubspot.deal_pipeline ;;

  dimension: _fivetran_deleted {
    hidden: yes
    type: yesno
    sql: ${TABLE}."_fivetran_deleted" ;;
  }

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

  dimension: active {
    hidden: yes
    type: yesno
    sql: ${TABLE}."active" ;;
  }

  dimension: display_order {
    hidden: yes
    type: number
    sql: ${TABLE}."display_order" ;;
  }

  dimension: label {
    hidden: yes
    type: string
    sql: ${TABLE}."label" ;;
  }

  dimension: pipeline_id {
    hidden: yes
    type: string
    sql: ${TABLE}."pipeline_id" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
