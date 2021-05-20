view: users {
  sql_table_name: hiring.users ;;
  drill_fields: [_id]

  dimension: _id {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: email {
    hidden: yes
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }


}
