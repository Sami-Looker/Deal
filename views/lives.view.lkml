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

  dimension: health_card_number {
    hidden: yes
    type: string
    sql: ${TABLE}."health_card_number" ;;
  }

  dimension: birth_at {
    hidden: yes
    type: date
    sql: ${TABLE}."birth_at" ;;
  }

  dimension: holder_id {
    hidden: yes
    type: number
    sql: ${TABLE}."holder_id" ;;
  }
}
