view: company {
  sql_table_name: hubspot.company ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."is_deleted" ;;
  }

  dimension: portal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."portal_id" ;;
  }

  dimension: property_address {
    group_label: "Location"
    label: "Address"
    type: string
    sql: ${TABLE}."property_address" ;;
  }

  dimension: property_annualrevenue {
    type: number
    sql: ${TABLE}."property_annualrevenue" ;;
  }

  dimension: property_city {
    group_label: "Location"
    label: "City"
    type: string
    sql: ${TABLE}."property_city" ;;
  }

  dimension_group: property_closedate {
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

  dimension: property_country {
    group_label: "Location"
    label: "Country"
    type: string
    sql: ${TABLE}."property_country" ;;
  }

  dimension_group: property_createdate {
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

  dimension: property_days_to_close {
    type: number
    sql: ${TABLE}."property_days_to_close" ;;
  }

  dimension: property_description {
    type: string
    sql: ${TABLE}."property_description" ;;
  }

  dimension: property_domain {
    type: string
    sql: ${TABLE}."property_domain" ;;
  }

  dimension: property_facebook_company_page {
    type: string
    sql: ${TABLE}."property_facebook_company_page" ;;
  }

  dimension_group: property_first_contact_createdate {
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
    sql: ${TABLE}."property_first_contact_createdate" ;;
  }

  dimension_group: property_first_conversion {
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
    sql: ${TABLE}."property_first_conversion_date" ;;
  }

  dimension: property_first_conversion_event_name {
    type: string
    sql: ${TABLE}."property_first_conversion_event_name" ;;
  }

  dimension_group: property_first_deal_created {
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
    sql: ${TABLE}."property_first_deal_created_date" ;;
  }

  dimension: property_founded_year {
    type: number
    sql: ${TABLE}."property_founded_year" ;;
  }

  dimension: property_hs_all_accessible_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_all_accessible_team_ids" ;;
  }

  dimension: property_hs_all_owner_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_all_owner_ids" ;;
  }

  dimension: property_hs_all_team_ids {
    type: number
    value_format_name: id
    sql: ${TABLE}."property_hs_all_team_ids" ;;
  }

  dimension_group: property_hs_analytics_first_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_first_timestamp" ;;
  }

  dimension_group: property_hs_analytics_first_visit_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_first_visit_timestamp" ;;
  }

  dimension_group: property_hs_analytics_last_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_last_timestamp" ;;
  }

  dimension: property_hs_analytics_last_touch_converting_campaign {
    type: string
    sql: ${TABLE}."property_hs_analytics_last_touch_converting_campaign" ;;
  }

  dimension_group: property_hs_analytics_last_visit_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_last_visit_timestamp" ;;
  }

  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_page_views" ;;
  }

  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_visits" ;;
  }

  dimension: property_hs_analytics_source {
    type: string
    sql: ${TABLE}."property_hs_analytics_source" ;;
  }

  dimension: property_hs_analytics_source_data_1 {
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_1" ;;
  }

  dimension: property_hs_analytics_source_data_2 {
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_2" ;;
  }

  dimension: property_hs_created_by_user_id {
    type: number
    sql: ${TABLE}."property_hs_created_by_user_id" ;;
  }

  dimension: property_hs_is_target_account {
    type: yesno
    sql: ${TABLE}."property_hs_is_target_account" ;;
  }

  dimension_group: property_hs_last_sales_activity {
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
    sql: ${TABLE}."property_hs_last_sales_activity_date" ;;
  }

  dimension_group: property_hs_last_sales_activity_timestamp {
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
    sql: ${TABLE}."property_hs_last_sales_activity_timestamp" ;;
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

  dimension: property_hs_num_blockers {
    type: number
    sql: ${TABLE}."property_hs_num_blockers" ;;
  }

  dimension: property_hs_num_child_companies {
    type: number
    sql: ${TABLE}."property_hs_num_child_companies" ;;
  }

  dimension: property_hs_num_contacts_with_buying_roles {
    type: number
    sql: ${TABLE}."property_hs_num_contacts_with_buying_roles" ;;
  }

  dimension: property_hs_num_decision_makers {
    type: number
    sql: ${TABLE}."property_hs_num_decision_makers" ;;
  }

  dimension: property_hs_num_open_deals {
    type: number
    sql: ${TABLE}."property_hs_num_open_deals" ;;
  }

  dimension: property_hs_predictivecontactscore_v_2 {
    type: number
    sql: ${TABLE}."property_hs_predictivecontactscore_v_2" ;;
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

  dimension: property_hs_target_account_probability {
    type: number
    sql: ${TABLE}."property_hs_target_account_probability" ;;
  }

  dimension: property_hs_total_deal_value {
    type: number
    sql: ${TABLE}."property_hs_total_deal_value" ;;
  }

  dimension: property_hs_updated_by_user_id {
    type: number
    sql: ${TABLE}."property_hs_updated_by_user_id" ;;
  }

  dimension: property_hs_user_ids_of_all_owners {
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

  dimension: property_hubspot_owner_id {
    type: number
    sql: ${TABLE}."property_hubspot_owner_id" ;;
  }

  dimension: property_hubspot_team_id {
    type: number
    sql: ${TABLE}."property_hubspot_team_id" ;;
  }

  dimension: property_industry {
    type: string
    sql: ${TABLE}."property_industry" ;;
  }

  dimension: property_is_public {
    type: yesno
    sql: ${TABLE}."property_is_public" ;;
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}."property_lifecyclestage" ;;
  }

  dimension: property_linkedin_company_page {
    type: string
    sql: ${TABLE}."property_linkedin_company_page" ;;
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}."property_linkedinbio" ;;
  }

  dimension: property_name {
    type: string
    sql: ${TABLE}."property_name" ;;
  }

  dimension: property_no_do_cnpj {
    type: number
    sql: ${TABLE}."property_no_do_cnpj" ;;
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

  dimension: property_num_associated_contacts {
    type: number
    sql: ${TABLE}."property_num_associated_contacts" ;;
  }

  dimension: property_num_associated_deals {
    type: number
    sql: ${TABLE}."property_num_associated_deals" ;;
  }

  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: property_num_conversion_events {
    type: number
    sql: ${TABLE}."property_num_conversion_events" ;;
  }

  dimension: property_num_notes {
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: property_numberofemployees {
    type: number
    sql: ${TABLE}."property_numberofemployees" ;;
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}."property_phone" ;;
  }

  dimension_group: property_recent_conversion {
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
    sql: ${TABLE}."property_recent_conversion_date" ;;
  }

  dimension: property_recent_conversion_event_name {
    type: string
    sql: ${TABLE}."property_recent_conversion_event_name" ;;
  }

  dimension_group: property_recent_deal_close {
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
    sql: ${TABLE}."property_recent_deal_close_date" ;;
  }

  dimension: property_state {
    type: string
    sql: ${TABLE}."property_state" ;;
  }

  dimension: property_timezone {
    type: string
    sql: ${TABLE}."property_timezone" ;;
  }

  dimension: property_total_money_raised {
    type: string
    sql: ${TABLE}."property_total_money_raised" ;;
  }

  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}."property_twitterhandle" ;;
  }

  dimension: property_type {
    type: string
    sql: ${TABLE}."property_type" ;;
  }

  dimension: property_web_technologies {
    type: string
    sql: ${TABLE}."property_web_technologies" ;;
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}."property_website" ;;
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}."property_zip" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_name, property_first_conversion_event_name, property_recent_conversion_event_name]
  }
}
