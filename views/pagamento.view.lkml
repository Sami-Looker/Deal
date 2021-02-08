view: pagamento {
  sql_table_name: hiring.pagamento ;;

  dimension_group: _fivetran_synced {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."_fivetran_synced" ;;
  }

  dimension: _row {
    hidden: yes
    type: number
    sql: ${TABLE}."_row" ;;
  }

  dimension: cliente {
    hidden: yes
    type: string
    sql: ${TABLE}."cliente" ;;
  }

  dimension: cnpj {
    hidden: yes
    type:string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: data_comp {
    hidden: yes
    type: date
    sql: ${TABLE}."data_comp" ;;
  }

  dimension: data_vig {
    hidden: yes
    type: date
    sql: ${TABLE}."data_vig" ;;
  }

  dimension: data_pagto {
    hidden: yes
    type: date
    sql: ${TABLE}."data_pagto" ;;
  }

  dimension: data_venc {
    hidden: yes
    type: date
    sql: ${TABLE}."data_venc" ;;
  }

  dimension: obs {
    hidden: yes
    type: string
    sql: ${TABLE}."obs" ;;
  }

  dimension: status {
    hidden: yes
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: tipo_cobranca {
    hidden: yes
    type: string
    sql: ${TABLE}."tipo_cobranca" ;;
  }

  dimension: valor {
    hidden: yes
    type: number
    sql: ${TABLE}."valor" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
