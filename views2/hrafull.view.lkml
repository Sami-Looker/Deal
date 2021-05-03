view: hrafull {
  sql_table_name: app.hrafull ;;

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}."object_name" ;;
  }

  dimension: object_value {
    type: string
    sql: ${TABLE}."object_value" ;;
  }

  dimension: questionid {
    type: string
    sql: ${TABLE}."questionid" ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}."userid" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."value" ;;
  }

  measure: count {
    type: count
    drill_fields: [name, object_name]
  }
}
