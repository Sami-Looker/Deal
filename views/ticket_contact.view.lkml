view: ticket_contact {
  sql_table_name: hubspotmarketing.ticket_contact ;;

  dimension: contact_id {
    hidden: yes
    type: number
    sql: ${TABLE}."contact_id" ;;
  }

  dimension: ticket_id {
    hidden: yes
    primary_key: yes
    type: string
    # hidden: yes
    sql: ${TABLE}."ticket_id" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [ticket.id]
  }
}
