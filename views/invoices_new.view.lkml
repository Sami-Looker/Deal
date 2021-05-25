view: invoices_new {
  label: "Guias - EM DESENVOLVIMENTO"
  sql_table_name: mv_data.invoices ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: cd_cid {
    type: string
    sql: ${TABLE}."cd_cid" ;;
  }

  dimension: cd_con_pag {
    type: number
    sql: ${TABLE}."cd_con_pag" ;;
  }

  dimension: cd_contratado_solicitante {
    type: number
    sql: ${TABLE}."cd_contratado_solicitante" ;;
  }

  dimension: cd_especialidade {
    type: number
    sql: ${TABLE}."cd_especialidade" ;;
  }

  dimension: cd_fatura {
    type: number
    sql: ${TABLE}."cd_fatura" ;;
  }

  dimension: cd_lote_ctamed {
    type: number
    sql: ${TABLE}."cd_lote_ctamed" ;;
  }

  dimension: cd_mot_canc_negat_guia {
    type: number
    sql: ${TABLE}."cd_mot_canc_negat_guia" ;;
  }

  dimension: cd_plano {
    type: number
    sql: ${TABLE}."cd_plano" ;;
  }

  dimension: cd_prestador_executante {
    type: number
    sql: ${TABLE}."cd_prestador_executante" ;;
  }

  dimension: cd_procedimento {
    type: string
    sql: ${TABLE}."cd_procedimento" ;;
  }

  dimension: cd_tipo_atendimento {
    type: number
    sql: ${TABLE}."cd_tipo_atendimento" ;;
  }

  dimension: ds_especialidade {
    type: string
    sql: ${TABLE}."ds_especialidade" ;;
  }

  dimension: ds_mot_canc_negat_guia {
    type: string
    sql: ${TABLE}."ds_mot_canc_negat_guia" ;;
  }

  dimension: ds_plano {
    type: string
    sql: ${TABLE}."ds_plano" ;;
  }

  dimension: ds_procedimento {
    type: string
    sql: ${TABLE}."ds_procedimento" ;;
  }

  dimension: ds_sigla_conselho {
    type: string
    sql: ${TABLE}."ds_sigla_conselho" ;;
  }

  dimension: ds_tipo_atendimento {
    type: string
    sql: ${TABLE}."ds_tipo_atendimento" ;;
  }

  dimension_group: dt_autorizacao {
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
    sql: ${TABLE}."dt_autorizacao" ;;
  }

  dimension_group: dt_emissao {
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
    sql: ${TABLE}."dt_emissao" ;;
  }

  dimension_group: dt_lanc_finan {
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
    sql: ${TABLE}."dt_lanc_finan" ;;
  }

  dimension: dt_realizado {
    type: number
    sql: ${TABLE}."dt_realizado" ;;
  }

  dimension: id_folha_pagto {
    type: number
    sql: ${TABLE}."id_folha_pagto" ;;
  }

  dimension: nm_contratado_solicitante {
    type: string
    sql: ${TABLE}."nm_contratado_solicitante" ;;
  }

  dimension: nm_empresa {
    type: string
    sql: ${TABLE}."nm_empresa" ;;
  }

  dimension: nm_membro {
    type: string
    sql: ${TABLE}."nm_membro" ;;
  }

  dimension: nm_prestador_executante {
    type: string
    sql: ${TABLE}."nm_prestador_executante" ;;
  }

  dimension: nm_profissional_solicitante {
    type: string
    sql: ${TABLE}."nm_profissional_solicitante" ;;
  }

  dimension: nr_carteirinha {
    type: string
    sql: ${TABLE}."nr_carteirinha" ;;
  }

  dimension: nr_cnpj {
    type: string
    sql: ${TABLE}."nr_cnpj" ;;
  }

  dimension: nr_conselho {
    type: string
    sql: ${TABLE}."nr_conselho" ;;
  }

  dimension: nr_cpf {
    type: number
    sql: ${TABLE}."nr_cpf" ;;
  }

  dimension: nr_cpf_cnpj_prest_executante {
    type: string
    sql: ${TABLE}."nr_cpf_cnpj_prest_executante" ;;
  }

  dimension: nr_cpf_cnpj_prest_solicitante {
    type: string
    sql: ${TABLE}."nr_cpf_cnpj_prest_solicitante" ;;
  }

  dimension: nr_guia {
    type: number
    sql: ${TABLE}."nr_guia" ;;
  }

  dimension: nr_guia_pai {
    type: number
    sql: ${TABLE}."nr_guia_pai" ;;
  }

  dimension: nr_nota_fiscal {
    type: number
    sql: ${TABLE}."nr_nota_fiscal" ;;
  }

  dimension: qt_autorizado {
    type: number
    sql: ${TABLE}."qt_autorizado" ;;
  }

  dimension: qt_pago {
    type: number
    sql: ${TABLE}."qt_pago" ;;
  }

  dimension: qtd_vidas_contrato {
    type: number
    sql: ${TABLE}."qtd_vidas_contrato" ;;
  }

  dimension: sn_opme {
    type: string
    sql: ${TABLE}."sn_opme" ;;
  }

  dimension: status_guia {
    type: string
    sql: ${TABLE}."status_guia" ;;
  }

  dimension: status_procedimento {
    type: string
    sql: ${TABLE}."status_procedimento" ;;
  }

  dimension: tp_carater_atendimento {
    type: string
    sql: ${TABLE}."tp_carater_atendimento" ;;
  }

  dimension: tp_natureza_proced {
    type: string
    sql: ${TABLE}."tp_natureza_proced" ;;
  }

  dimension: uf_conselho_prof_solc {
    type: string
    sql: ${TABLE}."uf_conselho_prof_solc" ;;
  }

  dimension: vl_total_pago_ctamed {
    type: number
    sql: ${TABLE}."vl_total_pago_ctamed" ;;
  }

  dimension: vl_total_proced_guia {
    type: number
    sql: ${TABLE}."vl_total_proced_guia" ;;
  }

  measure: count{
    type: count_distinct
    sql:${nr_guia};;
    drill_fields: []
  }

  measure: sum{
    type: sum
    sql:${vl_total_proced_guia};;
    drill_fields: []
  }
}
