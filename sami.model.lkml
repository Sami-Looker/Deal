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

explore: deal {
  label: "Deals"

  join: deal_company {
    view_label: "Company"
    type: left_outer
    sql_on: ${deal.deal_id} = ${deal_company.deal_id} ;;
    relationship: many_to_one
  }

  join: deal_contact {
    view_label: "Deal Contact"
    type: left_outer
    sql_on: ${deal.deal_id} = ${deal_contact.deal_id} ;;
    relationship: many_to_one
  }

  join: contact {
    view_label: "Deal Contact"
    type: left_outer
    sql_on: ${deal_contact.contact_id} = ${contact.id} ;;
    relationship: one_to_one
  }
}
