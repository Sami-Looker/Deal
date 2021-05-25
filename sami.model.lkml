connection: "sami_main"
persist_for: "6 hours"
include: "/views/**/*.view"

explore: deal {
  persist_for: "6 hours"
  label: "Deals"
  join: deal_company {
    # view_label: "Company"
    type: left_outer
    sql_on: ${deal.deal_id} = ${deal_company.deal_id} ;;
    relationship: many_to_one
  }

  join: company {
    # view_label: "Company"
    type: left_outer
    sql_on: ${deal_company.company_id} = ${company.id} ;;
    relationship: one_to_one
  }

  join: beneficiaries {
    type: left_outer
    sql_on: ${beneficiaries.companyid} = ${companies._id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${companies.hirerid} = ${users._id} ;;
    relationship: one_to_one
  }

  join: gympass {
    type: left_outer
    sql_on: ${beneficiaries_dw.id} = ${gympass.beneficiary_id} ;;
    relationship: one_to_many
  }

  join: contracts {
    type: left_outer
    sql_on: ${companies_dw.id} = ${contracts.company_contractor_company_id} ;;
    relationship: one_to_one
  }

  join: guia_membro {
    type: left_outer
    sql_on: ${beneficiaries.email} = ${guia_membro.email} ;;
    relationship: one_to_one
  }

  join: boas_vindas {
    type: left_outer
    sql_on: ${beneficiaries.email} = ${boas_vindas.email} ;;
    relationship: one_to_one
  }

  join: video_tds {
    type: left_outer
    sql_on: ${beneficiaries.email} = ${video_tds.email} ;;
    relationship: one_to_one
  }

  join: download_app {
    type: left_outer
    sql_on: ${beneficiaries.email} = ${download_app.email} ;;
    relationship: one_to_one
  }

  join: user {
    type: full_outer
    sql_on: ${beneficiaries.cpf} = ${user.cpf} ;;
    relationship: one_to_one
  }

  join: data_de_contato_membro {
    type: left_outer
    sql_on: ${beneficiaries.cpf} = ${data_de_contato_membro.cpf} ;;
    relationship: one_to_one
  }

  join: parentesco {
    type: left_outer
    sql_on: ${beneficiaries.cpf} = ${parentesco.cpf} ;;
    relationship: one_to_one
  }

  join: data_primeira_videoconferencia {
    type: left_outer
    sql_on: ${beneficiaries.cpf} = ${data_primeira_videoconferencia.cpf} ;;
    relationship: one_to_one
  }

  join: data_de_resposta_membro {
    type: left_outer
    sql_on: ${beneficiaries.cpf} = ${data_de_resposta_membro.cpf} ;;
    relationship: one_to_one
  }

  join: companies {
    type: full_outer
    sql_on: ${companies.cnpj} =${deal.property_no_do_cnpj} ;;
    relationship: one_to_one
  }

  join: motivo_contratacao {
    type: full_outer
    sql_on: ${motivo_contratacao.cnpj} = ${companies.cnpj} ;;
    relationship: one_to_one
  }

  join: companies_dw {
    type: left_outer
    sql_on: ${companies_dw.document_identification_primary} =${deal.property_no_do_cnpj} ;;
    relationship: one_to_one
  }

  join: pagamentos {
    type: left_outer
    sql_on: ${companies_dw.document_identification_primary} = ${pagamentos.cnpj} ;;
    relationship: one_to_many
  }

  join: pagamentosina {
    type: left_outer
    sql_on: ${companies_dw.document_identification_primary} = ${pagamentosina.cnpj} ;;
    relationship: one_to_one
  }

  join: pagamento {
    type: left_outer
    sql_on: ${pagamento.cnpj} =${deal.property_no_do_cnpj} ;;
    relationship: one_to_one
  }

  join: companies_addressinfo {
    type: left_outer
    sql_on: ${companies.address_info_fk} =${companies_addressinfo.id} ;;
    relationship: one_to_one
  }

  join: deal_contact {
    type: full_outer
    sql_on: ${deal.deal_id} = ${deal_contact.deal_id} ;;
    relationship: many_to_one
  }

  join: owner {
    type: left_outer
    sql_on: ${deal.owner_id} = ${owner.owner_id} ;;
    relationship: many_to_one
  }

  join: contact {
    type: full_outer
    sql_on: ${deal_contact.contact_id} = ${contact.id} ;;
    relationship: one_to_one
  }

  join: mv_audience_overview {
    type:left_outer
    sql_on:${mv_audience_overview.date} = ${contact.createdate} ;;
    relationship: one_to_one
  }

  join: ticket {
    type: left_outer
    sql_on: ${ticket.id} = ${ticket_contact.ticket_id} ;;
    relationship: one_to_one
  }

  join: ticket_contact {
    type: left_outer
    sql_on: ${ticket_contact.contact_id} = ${contact_mkt.id} ;;
    relationship: one_to_one
  }

  join: contact_mkt {
    type: left_outer
    sql_on: ${contact_mkt.property_cpf} = ${beneficiaries.cpf} ;;
    relationship: one_to_one
  }

  join: deal_pipeline {
    type: left_outer
    sql_on: ${deal.deal_pipeline_id} = ${deal_pipeline.pipeline_id} ;;
    relationship: one_to_one
  }

  join: deal_pipeline_stage {
    type: left_outer
    sql_on: ${deal.deal_pipeline_stage_id} = ${deal_pipeline_stage.stage_id} ;;
    relationship: one_to_one
  }

  join: contact_property_history {
    view_label: "Contact History"
    type: left_outer
    sql_on: ${contact_property_history.contact_id} = ${contact.id} ;;
    relationship: one_to_one
  }

  join: company_property_history {
    view_label: "Company History"
    type: left_outer
    sql_on: ${company_property_history.company_id} = ${company.id} ;;
    relationship: one_to_one
  }

  join: deal_property_history {
    view_label: "Deal History"
    type: left_outer
    sql_on: ${deal_property_history.deal_id} = ${deal.deal_id} ;;
    relationship: one_to_one
  }

  join: time_in_stage_history {
    view_label: "Time Deal History"
    type: left_outer
    sql_on: ${deal.deal_id} = ${time_in_stage_history.deal_id} ;;
    relationship: one_to_one
  }

  join: macro_status_history {
    view_label: "Macro Status History"
    type: left_outer
    sql_on: ${deal.deal_id} = ${macro_status_history.deal_id} ;;
    relationship: one_to_one
  }

  always_filter: {filters:[deal.is_deleted: "no"]
  }

  join: deal_stage_facts {
    view_label: "Macro Status Facts"
    type: left_outer
    sql_on: ${deal.deal_id} = ${deal_stage_facts.deal_id} ;;
    relationship: one_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${beneficiaries.planid} = ${plans._id} ;;
    relationship: many_to_one
  }

  join: vidas {
    type: left_outer
    sql_on: ${vidas.cnpj} = ${company.cnpj} ;;
    relationship: one_to_one
  }

  join: life_locations {
    type: left_outer
    sql_on: ${life_locations.life_id} = ${lives.id} ;;
    relationship: one_to_one
  }

  join: life_contacts {
    type: left_outer
    sql_on: ${life_contacts.life_id} = ${lives.id} ;;
    relationship: one_to_one
  }

  join: lives {
    type: left_outer
    sql_on: ${lives.health_card_number} = ${beneficiaries.memberid} ;;
    relationship: one_to_one
  }

  join: invoices_new {
    type: full_outer
    sql_on: ${beneficiaries.memberid} = ${invoices_new.nr_carteirinha} ;;
    relationship: one_to_many
  }

  join: cpt {
    type: left_outer
    sql_on: ${cpt.cpf} = ${beneficiaries.cpf} ;;
    relationship: many_to_one
  }

  join: beneficiaries_dw {
    type: left_outer
    sql_on: ${lives.id} = ${beneficiaries_dw.life_id} ;;
    relationship: one_to_one
  }

  join: invoices {
    type: full_outer
    sql_on: ${lives.id} = ${invoices.life_id} ;;
    relationship: one_to_many
  }

  join: procedures {
    type: left_outer
    sql_on: ${invoices.episode_id} = ${procedures.episode_id} ;;
    relationship: one_to_many
  }

  join: grace_period {
    type: left_outer
    sql_on: ${grace_period.id} = ${beneficiaries_dw.grace_type_id} ;;
    relationship: one_to_one
  }

  join: grace_types {
    type: left_outer
    sql_on: ${grace_types.id} = ${beneficiaries_dw.grace_type_id} ;;
    relationship: one_to_one
  }

  join: hra {
    type: left_outer
    sql_on:${user.cpf} = ${hra.cpf} ;;
    relationship: one_to_one
  }

  join: hra_imc {
    type: left_outer
    sql_on:${hra_imc.cpf} = ${hra.cpf} ;;
    relationship: one_to_one
  }

  join: hra_pt {
    type: left_outer
    sql_on:${hra_pt.cpf} = ${hra.cpf} ;;
    relationship: one_to_one
  }

  join: symptoms {
    type: left_outer
    sql_on:${user.cpf} = ${symptoms.cpf} ;;
    relationship: one_to_many
  }

  join: symptoms_count {
    type: left_outer
    sql_on:${user.cpf} = ${symptoms_count.cpf} ;;
    relationship: one_to_many
  }
}
