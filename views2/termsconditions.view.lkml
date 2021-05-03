view: termsconditions {
  sql_table_name: app.termsconditions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: terms {
    type: string
    sql: ${TABLE}."terms" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
