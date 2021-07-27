view: deal_pipeline_stage {
  sql_table_name:hubspot_gw_teste.deal_pipeline_stage ;;

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

  dimension: closed_won {
    hidden: yes
    type: yesno
    sql: ${TABLE}."closed_won" ;;
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

  dimension: probability {
    hidden: yes
    type: number
    sql: ${TABLE}."probability" ;;
  }

  dimension: stage_id {
    hidden: yes
    type: string
    sql: ${TABLE}."stage_id" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
