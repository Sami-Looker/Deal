view: users_token {
  sql_table_name: app.users_token ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: expirationtime {
    type: string
    sql: ${TABLE}."expirationtime" ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}."number" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
