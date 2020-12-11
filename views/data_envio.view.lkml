view: data_envio {
  sql_table_name: gympass.data_envio ;;

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

  dimension: cnpj {
    hidden: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: data_de_envio_para_o_gympass {
    hidden: yes
    type: date
    sql: ${TABLE}."data_de_envio_para_o_gympass" ;;
  }

  dimension: empresa {
    hidden: yes
    type: string
    sql: ${TABLE}."empresa" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
