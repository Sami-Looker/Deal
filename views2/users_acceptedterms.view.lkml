view: users_acceptedterms {
  sql_table_name: app.users_acceptedterms ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: object_fk {
    type: number
    sql: ${TABLE}."Object_fk" ;;
  }

  dimension: parent_fk {
    type: number
    sql: ${TABLE}."parent_fk" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
