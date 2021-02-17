connection: "sami_main"
persist_for: "6 hours"
include: "/views/**/*.view"

explore: deal {
  persist_for: "1 hours"
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

  join: guia_membro {
    type: left_outer
    sql_on: ${beneficiaries.email} = ${guia_membro.email} ;;
    relationship: one_to_one
  }

  join: users {
    type: full_outer
    sql_on: ${beneficiaries.cpf} = ${users.cpf} ;;
    relationship: one_to_one
  }

  join: data_de_contato_membro {
    type: left_outer
    sql_on: ${beneficiaries.cpf} = ${data_de_contato_membro.cpf} ;;
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
    view_label: "Contact"
    type: left_outer
    sql_on: ${deal.deal_id} = ${deal_contact.deal_id} ;;
    relationship: many_to_one
  }

  join: contact {
    view_label: "Contact"
    type: left_outer
    sql_on: ${deal_contact.contact_id} = ${contact.id} ;;
    relationship: one_to_one
  }

  join: deal_pipeline {
    view_label: "Deal Pipeline"
    type: left_outer
    sql_on: ${deal.deal_pipeline_id} = ${deal_pipeline.pipeline_id} ;;
    relationship: one_to_one
  }

  join: deal_pipeline_stage {
    view_label: "Deal Stage"
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

}
