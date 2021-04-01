view: life_contacts {
  sql_table_name: datawarehouse.life_contacts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: life_id {
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: phone_home {
    type: string
    sql: ${TABLE}."phone_home" ;;
  }

  dimension: phone_mobile {
    type: string
    sql: ${TABLE}."phone_mobile" ;;
  }

  dimension: phone_work {
    type: string
    sql: ${TABLE}."phone_work" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
