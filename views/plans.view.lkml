view: plans {
  sql_table_name: hiring.plans ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: _id {
    hidden: yes
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: ansregisternumber {
    hidden: yes
    type: string
    sql: ${TABLE}."ansregisternumber" ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: price {
    hidden: yes
    type: number
    sql: ${TABLE}."price" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id, name, beneficiaries.count]
  }
}
