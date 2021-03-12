view: companies_primary_activity {
  sql_table_name: hiring.companies_primary_activity ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: code {
    hidden: yes
    type: string
    sql: ${TABLE}."code" ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: ${TABLE}."description" ;;
  }
}
