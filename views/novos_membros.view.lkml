view: novos_membros {
  sql_table_name: novos_membros_sami.novos_membros ;;

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
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: data_1_contato_do_time_de_saude_via_chat {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."data_1_contato_do_time_de_saude_via_chat",'DD/MM/YYYY');;
  }

  dimension: data_de_compensacao_do_pagamento_pgto_efetivado_ {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."data_de_compensacao_do_pagamento_pgto_efetivado_",'DD/MM/YYYY');;
  }

  dimension: data_de_pagamento {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."data_de_pagamento",'DD/MM/YYYY');;
  }

  dimension: data_do_cadastro_no_app_do_membro {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."data_do_cadastro_no_app_do_membro",'DD/MM/YYYY');;
  }

  dimension: data_vigencia {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."data_vigencia",'DD/MM/YYYY');;
  }

  dimension: disparo_da_pesquisa_de_pos_atendimento_embarque_ {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."disparo_da_pesquisa_de_pos_atendimento_embarque_",'DD/MM/YYYY');;
  }

  dimension: e_mail {
    hidden: yes
    type: string
    sql: ${TABLE}."e_mail" ;;
  }

  dimension: empresa {
    hidden: yes
    type: string
    sql: ${TABLE}."empresa" ;;
  }

  dimension: estimado_data_de_envio_de_push_no_app_no_membro {
    hidden: yes
    type: date
    sql: ${TABLE}."estimado_data_de_envio_de_push_no_app_no_membro",'DD/MM/YYYY');;
  }

  dimension: estimado_data_de_envio_do_1_e_mail_mkt {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."estimado_data_de_envio_do_1_e_mail_mkt",'DD/MM/YYYY');;
  }

  dimension: estimado_data_de_envio_do_2_e_mail_mkt {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."estimado_data_de_envio_do_2_e_mail_mkt",'DD/MM/YYYY');;
  }

  dimension: grau_de_dependencia {
    hidden: yes
    type: string
    sql: ${TABLE}."grau_de_dependencia" ;;
  }

  dimension: grau_de_parentesco {
    hidden: yes
    type: string
    sql: ${TABLE}."grau_de_parentesco" ;;
  }

  dimension: houve_resposta_ao_chat_do_time_clinico_ {
    hidden: yes
    type: string
    sql: ${TABLE}."houve_resposta_ao_chat_do_time_clinico_" ;;
  }

  dimension: n_contrato {
    hidden: yes
    type: number
    sql: ${TABLE}."n_contrato" ;;
  }

  dimension: nome {
    hidden: yes
    type: string
    sql: ${TABLE}."nome" ;;
  }

  dimension: pos_vendas_disparo_form_gympass_para_membro {
    hidden: yes
    type: date
    sql: to_date(${TABLE}."pos_vendas_disparo_form_gympass_para_membro",'DD/MM/YYYY');;
  }

  dimension: status {
    hidden: yes
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: status_do_embarque_clinico {
    hidden: yes
    type: string
    sql: ${TABLE}."status_do_embarque_clinico" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
