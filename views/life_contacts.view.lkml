view: life_contacts {
  sql_table_name: datawarehouse.life_contacts ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: life_id {
    hidden: yes
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: phone_home {
    hidden: yes
    type: string
    sql: ${TABLE}."phone_home" ;;
  }

  dimension: phone_mobile {
    hidden: yes
    type: string
    sql: ${TABLE}."phone_mobile" ;;
  }

  dimension: phone_work {
    hidden: yes
    type: string
    sql: ${TABLE}."phone_work" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id]
  }
}
