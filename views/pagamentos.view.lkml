view: pagamentos {
  label: "Financerio - EM DESENVOLVIMENTO"
  sql_table_name: hiring.pagamentos ;;


  dimension: cnpj {
    primary_key: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: cofins {
    type: number
    sql: ${TABLE}."cofins" ;;
  }

  dimension: contrato {
    type: number
    sql: ${TABLE}."contrato" ;;
  }

  dimension_group: data_comp {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."data_comp" ;;
  }

  dimension_group: data_pagto {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."data_pagto" ;;
  }

  dimension_group: data_venc {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."data_venc" ;;
  }

  dimension: deducoes {
    type: number
    sql: ${TABLE}."deducoes" ;;
  }

  dimension: descontos {
    type: number
    sql: ${TABLE}."descontos" ;;
  }

  dimension: iss {
    type: number
    sql: ${TABLE}."iss" ;;
  }

  dimension: novo_contrato {
    type: string
    sql: ${TABLE}."novo_contrato" ;;
  }

  dimension: obs {
    type: string
    sql: ${TABLE}."obs" ;;
  }

  dimension: parcela {
    type: number
    sql: ${TABLE}."parcela" ;;
  }

  dimension: pis {
    type: number
    sql: ${TABLE}."pis" ;;
  }

  dimension: plano {
    type: string
    sql: ${TABLE}."plano" ;;
  }

  dimension: r_caixa_banco {
    type: string
    sql: ${TABLE}."r_caixa_banco" ;;
  }

  dimension: receita_liquida {
    type: number
    sql: ${TABLE}."receita_liquida" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: status_de_pgto {
    type: string
    sql: ${TABLE}."status_de_pgto" ;;
  }

  dimension: status_do_contrato {
    type: string
    sql: ${TABLE}."status_do_contrato" ;;
  }

  dimension: tipo_cobranca {
    type: string
    sql: ${TABLE}."tipo_cobranca" ;;
  }

  dimension: total_pago {
    type: number
    sql: ${TABLE}."total_pago" ;;
  }

  dimension: valor_mensalidade {
    type: number
    sql: ${TABLE}."valor_mensalidade" ;;
  }

  dimension: valor_pago {
    type: number
    sql: ${TABLE}."valor_pago" ;;
  }

  dimension: valor_prev_caixa {
    type: number
    sql: ${TABLE}."valor_prev_caixa" ;;
  }


  measure: count {
    type: count
    drill_fields: []
  }
}
