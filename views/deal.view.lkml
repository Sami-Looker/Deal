include: "/base_views/deal_base.view"

view: deal {
  extends: [deal_base]
  sql_table_name: hubspot.deal ;;

  drill_fields: [deal_id]

  dimension: deal_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."deal_id" ;;
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

  dimension: deal_pipeline_id {
    hidden: yes
    type: string
    sql: ${TABLE}."deal_pipeline_id" ;;
  }

  dimension: deal_pipeline_stage_id {
    hidden: yes
    type: number
    sql: ${TABLE}."deal_pipeline_stage_id" ;;
  }

  dimension: is_deleted {
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

  dimension: amount {
    group_label: "Amounts"
    label: "Amount"
    description: "This the monetary value of the deal."
    type: number
    sql: ${TABLE}."property_amount" ;;
  }

  dimension: amount_in_home_currency {
    label: "Amount in Home Currency"
    group_label: "Amounts"
    type: number
    sql: ${TABLE}."property_amount_in_home_currency" ;;
  }

  dimension_group: close {
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
    sql: ${TABLE}."property_closedate" ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}."property_createdate" ;;
  }

  dimension: data_da_situacao_cadastral {
    type: number
    sql: ${TABLE}."property_data_da_situacao_cadastral" ;;
  }

  dimension: data_do_pagamento {
    type: number
    sql: ${TABLE}."property_data_do_pagamento" ;;
  }

  dimension: days_to_close {
    type: number
    sql: ${TABLE}."property_days_to_close" ;;
  }

  dimension: dealname {
    type: string
    sql: ${TABLE}."property_dealname" ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}."property_endereco" ;;
  }

  dimension: forma_de_pagamento {
    type: string
    sql: ${TABLE}."property_forma_de_pagamento" ;;
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
    type: string
    sql: ${TABLE}."property_hs_analytics_source" ;;
  }

  dimension: hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_1" ;;
  }

  dimension: hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_2" ;;
  }

  dimension: hs_closed_amount {
    type: number
    sql: ${TABLE}."property_hs_closed_amount" ;;
  }

  dimension: hs_closed_amount_in_home_currency {
    type: number
    sql: ${TABLE}."property_hs_closed_amount_in_home_currency" ;;
  }

  dimension_group: property_hs_createdate {
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

  dimension_group: property_hs_date_entered_4018240 {
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
    sql: ${TABLE}."property_hs_date_entered_4018240" ;;
  }

  dimension: hs_deal_stage_probability {
    type: number
    sql: ${TABLE}."property_hs_deal_stage_probability" ;;
  }

  dimension: hs_is_closed {
    type: yesno
    sql: ${TABLE}."property_hs_is_closed" ;;
  }

  dimension_group: property_hs_lastmodifieddate {
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

  dimension: hs_projected_amount {
    type: number
    sql: ${TABLE}."property_hs_projected_amount" ;;
  }

  dimension: hs_projected_amount_in_home_currency {
    type: number
    sql: ${TABLE}."property_hs_projected_amount_in_home_currency" ;;
  }

  dimension_group: property_hs_sales_email_last_replied {
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

  dimension: hs_time_in_4018240 {
    type: number
    sql: ${TABLE}."property_hs_time_in_4018240" ;;
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

  dimension: hubspot_team_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hubspot_team_id" ;;
  }

  dimension: n_00_ate_18_anos {
    type: number
    sql: ${TABLE}."property_n_00_ate_18_anos" ;;
  }

  dimension: n_19_ate_23_anos {
    type: number
    sql: ${TABLE}."property_n_19_ate_23_anos" ;;
  }

  dimension: n_24_ate_28_anos {
    type: number
    sql: ${TABLE}."property_n_24_ate_28_anos" ;;
  }

  dimension: n_29_ate_33_anos {
    type: number
    sql: ${TABLE}."property_n_29_ate_33_anos" ;;
  }

  dimension: n_34_ate_38_anos {
    type: number
    sql: ${TABLE}."property_n_34_ate_38_anos" ;;
  }

  dimension: n_39_ate_43_anos {
    type: number
    sql: ${TABLE}."property_n_39_ate_43_anos" ;;
  }

  dimension: n_44_ate_48_anos {
    type: number
    sql: ${TABLE}."property_n_44_ate_48_anos" ;;
  }

  dimension: n_49_ate_53_anos {
    type: number
    sql: ${TABLE}."property_n_49_ate_53_anos" ;;
  }

  dimension: n_54_ate_58_anos {
    type: number
    sql: ${TABLE}."property_n_54_ate_58_anos" ;;
  }

  dimension: n_59_ou_mais {
    type: number
    sql: ${TABLE}."property_n_59_ou_mais" ;;
  }

  dimension_group: property_notes_last_contacted {
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

  dimension: num_contacted_notes {
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: num_notes {
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: persona {
    type: string
    sql: ${TABLE}."property_persona" ;;
  }

  dimension: plano {
    type: string
    sql: ${TABLE}."property_plano" ;;
  }

  dimension: pra_quem_e_o_plano_ {
    type: string
    sql: ${TABLE}."property_pra_quem_e_o_plano_" ;;
  }

  dimension: profissao {
    type: string
    sql: ${TABLE}."property_profissao" ;;
  }

  dimension: quantidade_de_vidas {
    type: number
    sql: ${TABLE}."property_quantidade_de_vidas" ;;
  }

  dimension: status_do_contratante {
    type: string
    sql: ${TABLE}."property_status_do_contratante" ;;
  }

  dimension: tem_plano_medico_ {
    type: string
    sql: ${TABLE}."property_tem_plano_medico_" ;;
  }

  dimension: tipo_de_cnpj {
    type: string
    sql: ${TABLE}."property_tipo_de_cnpj" ;;
  }

  # Use Extends to keep common stage definitions in one place
  dimension: ultima_etapa {
    type: string
    sql: ${TABLE}."property_ultima_etapa" ;;
  }

  dimension: deal_stage {
    type: string
    sql: ${deal_pipeline_stage.label} ;;
  }


  # dimension: property_ultima_etapa {
  #   label: "Ultima Etapa"
  #   type: string
  #   sql: ${TABLE}."property_ultima_etapa" ;;
  # }

  # dimension: macro_status {
  #   type: string
  #   sql:
  #     CASE
  #       WHEN ${property_ultima_etapa} = 'Pagamento recusado' THEN 'Contratação'
  #       WHEN ${property_ultima_etapa} = 'Dados dos beneficiários' THEN 'SQL'
  #       WHEN ${property_ultima_etapa} = 'Qualificação' THEN 'SQL'
  #       WHEN ${property_ultima_etapa} = 'Sobre você' THEN 'SQL'
  #       WHEN ${property_ultima_etapa} = 'Cotação' THEN 'Cotação'
  #       WHEN ${property_ultima_etapa} = 'Pré-cotação' THEN 'Cotação'
  #       WHEN ${property_ultima_etapa} = 'Documentação recusada' THEN 'Contratação'
  #       WHEN ${property_ultima_etapa} = 'Contratado' THEN 'Contratação'
  #       WHEN ${property_ultima_etapa} = 'Envio de documentação' THEN 'Contratação'
  #       WHEN ${property_ultima_etapa} = 'Documentação aprovada' THEN 'Contratação'
  #       WHEN ${property_ultima_etapa} = 'Pagamento agendado' THEN 'Contratação'
  #     END
  #   ;;
  # }

#Homework:
# 1. Finish macro_status definition
# 2. Add counts for other macro_status
# 3. Build funnel visualization

# 1 Pagamento recusado - SQL
# 2 Dados dos beneficiários - SQL
# 3 Qualificação - SQL
# 4 Cotação - Cotação
# 5 Sobre você - SQL
# 6 Pré-cotação - Cotação
# 7 Documentação recusada - Contratação
# 8 Contratado - Contratação
# 9 Envio de documentação - Contratação
# 10  Documentação aprovada - Contratação


  ## Total Qualified Leads
  measure: count_total {
    alias: [count]
    type: count
    drill_fields: [deal_id, dealname]
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

  measure: count_contratacao {
    label: "(3) Count Contratação"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "Contratação"]
  }

  dimension: ultimo_pipeline {
    type: string
    sql: ${TABLE}."property_ultimo_pipeline" ;;
  }


}
