# All fields are hidden - no fields are needed for explores

view: deal_contact {
  sql_table_name: hubspot_.deal_contact ;;

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
