view: life_locations {
  sql_table_name: datawarehouse.life_locations ;;

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: life_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}."longitude" ;;
  }
}
