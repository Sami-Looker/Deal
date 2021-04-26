view: ticket {
  sql_table_name: hubspotm.ticket ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
    link: {
      label: "Hubspot"
      url: "https://app.hubspot.com/contacts/8341620/ticket/{{value}}"
    }
  }

  dimension: object_type {
    hidden: yes
    type: string
    sql: ${TABLE}."object_type" ;;
  }

  dimension_group: property_closed {
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
    sql: ${TABLE}."property_closed_date" ;;
  }

  dimension: property_content {
    hidden: yes
    type: string
    sql: ${TABLE}."property_content" ;;
  }

  dimension: property_createdate {
    hidden: yes
    type: date
    sql: ${TABLE}."property_createdate" ;;
  }

  dimension_group: property_hs_lastmodifieddate {
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
    sql: ${TABLE}."property_hs_lastmodifieddate" ;;
  }

  dimension: property_motivo {
    hidden: yes
    type: string
    sql: ${TABLE}."property_motivo" ;;
  }

  dimension: property_motivo_do_contato {
    hidden: yes
    type: string
    sql: ${TABLE}."property_motivo_do_contato" ;;
  }

  dimension: property_satisfacao {
    hidden: yes
    type: string
    sql: ${TABLE}."property_satisfacao" ;;
  }

  dimension: property_source_type {
    hidden: yes
    type: string
    sql: ${TABLE}."property_source_type" ;;
  }

  dimension: property_sub_motivo {
    hidden: yes
    type: string
    sql: ${TABLE}."property_sub_motivo" ;;
  }

  dimension: property_subject {
    hidden: yes
    type: string
    sql: ${TABLE}."property_subject" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id, ticket_contact.count]
  }
}
