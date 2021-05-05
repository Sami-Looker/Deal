view: owner {
  sql_table_name: hubspotgro.owner ;;
  drill_fields: [owner_id]

  dimension: owner_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."owner_id" ;;
  }

  dimension_group: _fivetran_synced {
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
    sql: ${TABLE}."_fivetran_synced" ;;
  }

  dimension: active_user_id {
      hidden: yes
    type: number
    sql: ${TABLE}."active_user_id" ;;
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

  dimension: first_name {
    hidden: yes
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: is_active {
    hidden: yes
    type: yesno
    sql: ${TABLE}."is_active" ;;
  }

  dimension: last_name {
    hidden: yes
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: full_name {
    hidden: yes
    type: string
    sql: concat(${TABLE}."first_name",' ',${TABLE}."last_name") ;;
  }

  dimension: portal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."portal_id" ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}."type" ;;
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

  dimension: user_id_including_inactive {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."user_id_including_inactive" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [owner_id, first_name, last_name]
  }
}
