view: companies {
  sql_table_name: hiring.companies ;;

  dimension: _id {
    hidden: yes
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: alias {
    hidden: yes
    type: string
    sql: ${TABLE}."alias" ;;
  }
  dimension: cnpj {
    hidden: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }
  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }
}
