view: deal_company {
  sql_table_name: hubspot.deal_company ;;

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

  dimension: deal_id {
    type: number
    sql: ${TABLE}."deal_id" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
