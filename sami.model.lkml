connection: "sami_dw"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: deal_property_history {}
explore: time_in_deal_stage_history {}
explore: deal_stage_facts {}

explore: deal {
  label: "Deals"

  join: deal_pipeline_stage {
    type: left_outer
    sql_on: ${deal.deal_pipeline_stage_id} = ${deal_pipeline_stage.stage_id} ;;
    relationship: one_to_one
  }

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

  join: contact_property_history {
    view_label: "Contact History"
    type: left_outer
    sql_on: ${contact_property_history.contact_id} = ${contact.id} ;;
    relationship: one_to_one
  }

  # join: company_property_history {
  #   view_label: "Company History"
  #   type: left_outer
  #   sql_on: ${company_property_history.company_id} = ${company.id} ;;
  #   relationship: one_to_one
  # }

  join: deal_property_history {
    view_label: "Deal History"
    type: left_outer
    sql_on: ${deal_property_history.deal_id} = ${deal.deal_id} ;;
    relationship: one_to_one
  }

  join: deal_stage_facts {
    view_label: "Deal Stage Facts"
    type: left_outer
    sql_on: ${deal.deal_id} = ${deal_stage_facts.deal_id} ;;
    relationship: one_to_one
  }
}
