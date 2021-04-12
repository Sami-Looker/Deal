view: contact_mkt {
  sql_table_name: hubspot_marketing.contact ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: property_cpf {
    hidden: yes
    type: string
    sql: ${TABLE}."property_cpf" ;;
  }
}
