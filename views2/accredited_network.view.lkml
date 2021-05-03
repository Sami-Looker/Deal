view: accredited_network {
  sql_table_name: app.accredited_network ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
