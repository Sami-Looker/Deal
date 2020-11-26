view: companies_addressinfo {
  sql_table_name: hiring.companies_addressinfo ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: address {
    hidden: yes
    type: string
    sql: ${TABLE}."address" ;;
  }

  dimension: city {
    hidden: yes
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: city_ibge {
    hidden: yes
    type: string
    sql: ${TABLE}."city_ibge" ;;
  }

  dimension: complement {
    hidden: yes
    type: string
    sql: ${TABLE}."complement" ;;
  }

  dimension: district {
    hidden: yes
    type: string
    sql: ${TABLE}."district" ;;
  }

  dimension: number {
    hidden: yes
    type: string
    sql: ${TABLE}."number" ;;
  }

  dimension: state {
    hidden: yes
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: state_ibge {
    hidden: yes
    type: string
    sql: ${TABLE}."state_ibge" ;;
  }

  dimension: zipcode {
    hidden: yes
    type: zipcode
    sql: ${TABLE}."zipcode" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id]
  }
}
