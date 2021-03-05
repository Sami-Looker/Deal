view: companies_dw {
  sql_table_name: datawarehouse.companies ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: document_identification_primary {
    hidden: yes
    type: string
    sql: ${TABLE}."document_identification_primary" ;;
  }
}
