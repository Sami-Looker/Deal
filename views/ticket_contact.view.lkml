view: ticket_contact {
  sql_table_name: hubspot_mkt_t.ticket_contact ;;

  dimension: contact_id {
    hidden: yes
    type: string
    sql: ${TABLE}."contact_id" ;;
  }

  dimension: ticket_id {
    hidden: yes
    type: string
    # hidden: yes
    sql: ${TABLE}."ticket_id" ;;
  }

}
