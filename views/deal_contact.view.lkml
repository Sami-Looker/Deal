view: deal_contact {
  sql_table_name: hubspot.deal_contact ;;

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

  dimension: deal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."deal_id" ;;
  }

}
