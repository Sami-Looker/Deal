# All fields are hidden - no fields are needed for explores

view: deal_company {
  sql_table_name: g_hubspot.deal_company ;;

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

  dimension: company_id {
    hidden: yes
    type: number
    sql: ${TABLE}."company_id" ;;
  }

  dimension: deal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."deal_id" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
