view: companysettings {
  sql_table_name: app.companysettings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: __v {
    type: number
    sql: ${TABLE}."__v" ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension_group: createdat {
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
    sql: ${TABLE}."createdat" ;;
  }

  dimension_group: updatedat {
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
    sql: ${TABLE}."updatedat" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."website" ;;
  }

  dimension: whatsappsupport {
    type: string
    sql: ${TABLE}."whatsappsupport" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
