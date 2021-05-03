view: users_uploadedselfies_object {
  sql_table_name: app.users_uploadedselfies_object ;;
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

  dimension: filename {
    type: string
    sql: ${TABLE}."filename" ;;
  }

  dimension: s3key {
    type: string
    sql: ${TABLE}."s3key" ;;
  }

  dimension: similarity {
    type: number
    sql: ${TABLE}."similarity" ;;
  }

  dimension: size {
    type: number
    sql: ${TABLE}."size" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension_group: uploadedat {
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
    sql: ${TABLE}."uploadedat" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, filename]
  }
}
