view: lives {
  sql_table_name: datawarehouse.lives ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: document_identification_primary {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}."document_identification_primary" ;;
  }

}