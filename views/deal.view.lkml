include: "/base_views/deal_base.view"

view: deal{
  extends: [deal_base]
  sql_table_name:hubspot_gw_teste.deal ;;

  drill_fields: [dealname]

  dimension: deal_id {
    hidden: no
    primary_key: yes
    type: number
    sql: ${TABLE}."deal_id" ;;
    link: {
      label: "Hubspot"
      url: "https://app.hubspot.com/contacts/7798412/deal/{{value}}/"
    }
  }

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

  dimension: empresa_Nome {
    hidden: yes
    label: "Nome"
    type: string
    sql: ${companies.name} ;;
  }

  dimension: deal_pipeline_id {
    hidden: yes
    type: string
    sql: ${TABLE}."deal_pipeline_id" ;;
  }

  dimension: deal_pipeline_stage_id {
    hidden: yes
    type: string
    sql: ${TABLE}."deal_pipeline_stage_id" ;;
  }

  dimension: is_deleted {
    hidden: yes
    type: yesno
    sql: ${TABLE}."is_deleted" ;;
  }

  dimension: owner_id {
    hidden: yes
    type: number
    sql: ${TABLE}."owner_id" ;;
  }

  dimension: portal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."portal_id" ;;
  }

  dimension: property_venda_digital {
    label: "Venda Digital"
    type: string
    sql: ${TABLE}."property_venda_digital" ;;
  }


  dimension: amount {
    group_label: "Amounts"
    hidden: yes
    label: "Amount"
    description: "This the monetary value of the deal."
    type: number
    sql: ${TABLE}."property_amount" ;;
    html:<span>R$</span> {{ rendered_value }} ;;
  }

  dimension: amount_in_home_currency {
    hidden: yes
    label: "Amount in Home Currency"
    group_label: "Amounts"
    type: number
    sql: ${TABLE}."property_amount_in_home_currency" ;;
  }

  dimension_group: create {
    label: "Create Date"
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."property_createdate" ;;
  }

  dimension: days_to_close {
    label: "Days to Close"
    type: number
    sql: ${TABLE}."property_days_to_close" ;;
  }

  dimension: dealname {
    label: "Deal Name"
    type: string
    sql: ${TABLE}."property_dealname" ;;
  }

  dimension: tipo_cobranca {
    label: "Forma de Pagamento"
    type: string
    sql: CASE
            WHEN ${contracts.payment_method_concept_id} = 3 then 'Boleto'
            WHEN ${contracts.payment_method_concept_id} = 5 then 'Cartão de Crédito'
            ELSE NULL
         END;;
  }

  dimension: property_deal_currency_code {
    hidden: yes
    type: string
    sql: ${TABLE}."property_deal_currency_code" ;;
  }

  dimension: property_tipo_de_venda {
    label: "Tipo de Venda"
    hidden: no
    type: string
    sql: ${TABLE}."property_tipo_de_venda" ;;
  }

  dimension_group: property_engagements_last_meeting_booked {
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
    sql: ${TABLE}."property_engagements_last_meeting_booked" ;;
  }

  dimension: hs_all_accessible_team_ids {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_all_accessible_team_ids" ;;
  }

  dimension: hs_all_owner_ids {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_all_owner_ids" ;;
  }

  dimension: hs_all_team_ids {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_all_team_ids" ;;
  }

  dimension: hs_analytics_source {
    hidden: yes
    label: "Main Source"
    group_label: "Source"
    type: string
    sql: ${TABLE}."property_hs_analytics_source" ;;
  }

  dimension: hs_analytics_source_data_1 {
    hidden: yes
    label: "Main Source Data 1"
    group_label: "Source"
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_1" ;;
  }

  dimension: hs_analytics_source_data_2 {
    hidden: yes
    label: "Main Source Data 2"
    group_label: "Source"
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_2" ;;
  }

  dimension: hs_closed_amount {
    hidden: yes
    label: "Closed Amount"
    group_label: "Amounts"
    type: number
    sql: ${TABLE}."property_hs_closed_amount" ;;
  }

  dimension: hs_closed_amount_in_home_currency {
    hidden: yes
    label: "Closed Amount in Home Currency"
    group_label: "Amounts"
    type: number
    sql: ${TABLE}."property_hs_closed_amount_in_home_currency" ;;
  }

  dimension: property_hs_created_by_user_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_created_by_user_id" ;;
  }

  dimension_group: property_hs_createdate {
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
    sql: ${TABLE}."property_hs_createdate" ;;
  }

  dimension: hs_deal_stage_probability {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_deal_stage_probability" ;;
  }

  dimension: hs_is_closed {
    hidden: yes
    type: yesno
    sql: ${TABLE}."property_hs_is_closed" ;;
  }

  dimension_group: property_hs_lastmodifieddate {
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
    sql: ${TABLE}."property_hs_lastmodifieddate" ;;
  }

  dimension_group: property_hs_latest_meeting_activity {
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
    sql: ${TABLE}."property_hs_latest_meeting_activity" ;;
  }

  dimension: hs_projected_amount {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_projected_amount" ;;
  }

  dimension: hs_projected_amount_in_home_currency {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_projected_amount_in_home_currency" ;;
  }

  dimension_group: property_hs_sales_email_last_replied {
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
    sql: ${TABLE}."property_hs_sales_email_last_replied" ;;
  }

  dimension: hs_updated_by_user_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_updated_by_user_id" ;;
  }

  dimension: hs_user_ids_of_all_owners {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_user_ids_of_all_owners" ;;
  }

  dimension_group: property_hubspot_owner_assigneddate {
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
    sql: ${TABLE}."property_hubspot_owner_assigneddate" ;;
  }

  dimension: property_motivo_do_contrato_perdido {
    label: "Motivo do Contrato Perdido"
    type: string
    sql: ${TABLE}."property_motivo_do_contrato_perdido" ;;
  }

  dimension: hubspot_team_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hubspot_team_id" ;;
  }

  dimension: n_00_ate_18_anos {
    label: "00_ate_18_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_00_ate_18_anos" ;;
  }

  dimension: n_19_ate_23_anos {
    label: "19_ate_23_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_19_ate_23_anos" ;;
  }

  dimension: n_24_ate_28_anos {
    label: "24_ate_28_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_24_ate_28_anos" ;;
  }

  dimension: n_29_ate_33_anos {
    label: "29_ate_33_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_29_ate_33_anos" ;;
  }

  dimension: n_34_ate_38_anos {
    label: "34_ate_38_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_34_ate_38_anos" ;;
  }

  dimension: n_39_ate_43_anos {
    label: "39_ate_43_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_39_ate_43_anos" ;;
  }

  dimension: n_44_ate_48_anos {
    label: "44_ate_48_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_44_ate_48_anos" ;;
  }

  dimension: n_49_ate_53_anos {
    label: "49_ate_53_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_49_ate_53_anos" ;;
  }

  dimension: n_54_ate_58_anos {
    label: "54_ate_58_anos"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_54_ate_58_anos" ;;
  }

  dimension: n_59_ou_mais {
    label: "59_ou_mais"
    group_label: "Faixa Etária"
    type: number
    sql: ${TABLE}."property_n_59_ou_mais" ;;
  }

  dimension: property_no_do_cnpj {
    label: "CNPJ"
    type: string
    sql: ${TABLE}."property_no_do_cnpj" ;;
  }

  dimension: property_nome_do_vendedor {
    label: "Vendedor"
    type: string
    sql: ${owner.full_name} ;;
  }

  dimension_group: property_notes_last_contacted {
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
    sql: ${TABLE}."property_notes_last_contacted" ;;
  }

  dimension_group: property_notes_last_updated {
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
    sql: ${TABLE}."property_notes_last_updated" ;;
  }

  dimension_group: property_notes_next_activity {
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
    sql: ${TABLE}."property_notes_next_activity_date" ;;
  }

  dimension: num_contacted_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: num_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: persona {
    label: "Persona"
    type: string
    sql: ${TABLE}."property_persona" ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}."property_produto" ;;
  }

  dimension: cta {
    type: string
    sql: ${TABLE}."property_cta" ;;
  }

  dimension: prioridade {
    type: string
    sql: ${TABLE}."property_prioridade" ;;
  }

  dimension: campanha {
    hidden: yes
    label: "Campanha deal"
    type: string
    sql: ${TABLE}."property_campanha" ;;
  }

  dimension: property_possui_cnpj_aberto_ {
    label: "Possui CNPJ Aberto"
    type: string
    sql: ${TABLE}."property_possui_cnpj_aberto_" ;;
  }

  dimension: pra_quem_e_o_plano_ {
    label: "Para quem é o Plano"
    type: string
    sql: ${TABLE}."property_pra_quem_e_o_plano_" ;;
  }

  dimension: profissao {
    label: "Profissão"
    type: string
    sql: ${TABLE}."property_profissao" ;;
  }

  dimension: property_qual_tipo_de_cnpj_ {
    label: "Tipo de CNPJ"
    type: string
    sql: ${TABLE}."property_qual_tipo_de_cnpj_" ;;
  }

  dimension: vidas {
    label: "Qtd. de Vidas"
    type: number
    sql: ${vidas.count} ;;
  }

  dimension: status_do_contratante {
    hidden: yes
    type: string
    sql: ${TABLE}."property_status_do_contratante" ;;
  }

  dimension: tem_plano_medico_ {
    type: string
    sql: ${TABLE}."property_tem_plano_medico_" ;;
  }

  dimension: deal_stage {
    type: string
    sql: ${deal_pipeline_stage.label} ;;
  }

  dimension: deal_pipeline {
    type: string
    sql: ${deal_pipeline.label} ;;
  }

  dimension: property_email {
    label: "e-mail"
    type: string
    sql: ${contact.property_email} ;;
  }

  dimension: profile_url {
    type: string
    sql: ${contact.profile_url} ;;
  }

  dimension: property_lastname {
    label: "Last Name"
    type: string
    sql: ${contact.property_lastname} ;;
  }

  dimension: property_firstname {
    label: "First Name"
    type: string
    sql: ${contact.property_firstname};;
  }

  dimension: property_name {
    label: "Complete Name"
    type: string
    sql: Concat(${contact.property_firstname},' ', ${contact.property_lastname}) ;;
  }
  dimension: property_phone {
    label: "Phone"
    type: string
    sql: ${contact.property_phone} ;;
  }

  dimension: valor {
    label: "Valor"
    type: number
    sql: ${contracts.cost} ;;
  }

  dimension: data_vig {
    label: "Status da Vigência"
    type: string
    sql:CASE
WHEN (${contracts.start} IS NULL) THEN  'Planejado'
ELSE 'Confirmado'
END ;;
  }

  dimension_group: data_pagamento {
    label: "Data de Vigência do Contrato"
    type: time
    timeframes: [
      raw,
      date,
      month,]
    sql: CASE
            WHEN (${contracts.start} IS NULL) THEN  ${TABLE}."data_pagamento"
            ELSE ${contracts.start}
         END;;
  }

  dimension: data_pagto {
    label: "Data do Pagamento"
    type: date
    sql: ${contracts.payment} ;;
  }

  dimension: data_venc {
    label: " Data de Vencimento do Pagamento"
    type: date
    sql: ${contracts.next_payment} ;;
  }

  ## Total Qualified Leads
  measure: count_total {
    alias: [count]
    type: count
    drill_fields: [dealname]
  }


  measure: sum_amount {
    type: sum
    sql: ${valor} ;;
    html:<span>R$</span> {{ rendered_value }} ;;
    drill_fields: [dealname]
  }

  measure: avg_amount {
    type: average
    sql: ${valor} ;;
    drill_fields: [dealname]
    value_format_name: decimal_1
    html:<span>R$</span> {{ rendered_value }} ;;
  }

  dimension: elegibilidade_do_membro {
    label: "Elegibilidade para Ativação"
    type: string
    sql:
      CASE
       WHEN (${contracts.start} <= current_date and ${contracts.payment} <= current_date) THEN 'Sim'
       WHEN ${contracts.start} <= current_date and ${contracts.payment} IS NULL THEN 'Pagamento atrasado'
      ELSE 'Não'
      END
    ;;
  }

  dimension: para_quem_contratou {
    type: string
    label: "Para quem contratou?"
    sql: ${motivo_contratacao.para_quem_contratou} ;;
  }

  dimension: status_source_value {
    label: "Status do Membro"
    type: string
    sql: CASE
       WHEN ${beneficiaries_dw.status_source_value} IS NULL THEN 'Não consta no DW'
       ELSE ${beneficiaries_dw.status_source_value}
       END;;
  }

  ## Create Filtered Measures
  measure: count_sql {
    label: "(1) Count SQL"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "SQL"]
  }

  measure: count_cotacao {
    label: "(2) Count Cotação"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "Cotação"]
  }

  measure: percentage_cotacao_sql {
    label: "%Cotação/SQL"
    group_label: "Funnel Percents"
    type: number
    sql: 1.0 * ${count_cotacao} / NULLIF(${count_total},0) ;;
    value_format_name: percent_2
  }

  measure: percentage_contratado_sql {
    label: "%Contratado/SQL"
    group_label: "Funnel Percents"
    type: number
    sql: 1.0 * ${count_contratado} / NULLIF(${count_total},0) ;;
    value_format_name: percent_2
  }

  measure: count_contratado {
    label: "(3) Count Contratado"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "Contratado"]
  }

}
