view: pagamentosina {
  label: "Financerio - EM DESENVOLVIMENTO"
  sql_table_name: hiring.pagamentosina ;;

  dimension_group: _fivetran_synced {
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
    type: number
    sql: ${TABLE}."_row" ;;
  }

  dimension: cnpj {
    primary_key: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: contrato {
    type: number
    sql: ${TABLE}."contrato" ;;
  }

  dimension: dias_em_aberto {
    type: number
    sql: ${TABLE}."dias_em_aberto" ;;
  }

  dimension: mv {
    type: string
    sql: ${TABLE}."mv" ;;
  }

  dimension: quant_parcelas {
    type: number
    sql: ${TABLE}."quant_parcelas" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: total_devido {
    type: number
    sql: ${TABLE}."total_devido" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
