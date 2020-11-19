view: plans {
  sql_table_name: hiring.plans ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: _id {
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: ansregisternumber {
    type: string
    sql: ${TABLE}."ansregisternumber" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, beneficiaries.count]
  }
}
