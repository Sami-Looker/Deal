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

  dimension: address {
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_address" ;;
  }

  dimension: annualrevenue {
    type: number
    sql: ${TABLE}."property_annualrevenue" ;;
  }

  dimension: city {
    group_label: "Location"
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

  dimension: country {
    group_label: "Location"
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

  dimension: days_to_close {
    type: number
    sql: ${TABLE}."property_days_to_close" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."property_description" ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}."property_domain" ;;
  }

  dimension: facebook_company_page {
    type: string
    sql: ${TABLE}."property_facebook_company_page" ;;
  }

  dimension_group: first_contact_createdate {
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

  dimension_group: first_conversion {
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

  dimension: first_conversion_event_name {
    type: string
    sql: ${TABLE}."property_first_conversion_event_name" ;;
  }

  dimension_group: first_deal_created {
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

  dimension: founded_year {
    type: number
    sql: ${TABLE}."property_founded_year" ;;
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

  dimension_group: hs_analytics_first_timestamp {
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

  dimension_group: hs_analytics_first_visit_timestamp {
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

  dimension_group: hs_analytics_last_timestamp {
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

  dimension: hs_analytics_last_touch_converting_campaign {
    type: string
    sql: ${TABLE}."property_hs_analytics_last_touch_converting_campaign" ;;
  }

  dimension_group: hs_analytics_last_visit_timestamp {
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

  dimension: hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_page_views" ;;
  }

  dimension: hs_analytics_num_visits {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_visits" ;;
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

  dimension: hs_created_by_user_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_created_by_user_id" ;;
  }

  dimension: hs_is_target_account {
    type: yesno
    sql: ${TABLE}."property_hs_is_target_account" ;;
  }

  dimension_group: hs_last_sales_activity {
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

  dimension_group: hs_last_sales_activity_timestamp {
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

  dimension_group: hs_lastmodifieddate {
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

  dimension: hs_num_blockers {
    type: number
    sql: ${TABLE}."property_hs_num_blockers" ;;
  }

  dimension: hs_num_child_companies {
    type: number
    sql: ${TABLE}."property_hs_num_child_companies" ;;
  }

  dimension: hs_num_contacts_with_buying_roles {
    type: number
    sql: ${TABLE}."property_hs_num_contacts_with_buying_roles" ;;
  }

  dimension: hs_num_decision_makers {
    type: number
    sql: ${TABLE}."property_hs_num_decision_makers" ;;
  }

  dimension: hs_num_open_deals {
    type: number
    sql: ${TABLE}."property_hs_num_open_deals" ;;
  }

  dimension: hs_predictivecontactscore_v_2 {
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

  dimension: hs_target_account_probability {
    type: number
    sql: ${TABLE}."property_hs_target_account_probability" ;;
  }

  dimension: hs_total_deal_value {
    type: number
    sql: ${TABLE}."property_hs_total_deal_value" ;;
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

  dimension: hubspot_owner_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hubspot_owner_id" ;;
  }

  dimension: hubspot_team_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hubspot_team_id" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."property_industry" ;;
  }

  dimension: is_public {
    type: yesno
    sql: ${TABLE}."property_is_public" ;;
  }

  dimension: lifecyclestage {
    type: string
    sql: ${TABLE}."property_lifecyclestage" ;;
  }

  dimension: linkedin_company_page {
    type: string
    sql: ${TABLE}."property_linkedin_company_page" ;;
  }

  dimension: linkedinbio {
    type: string
    sql: ${TABLE}."property_linkedinbio" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."property_name" ;;
  }

  dimension: no_do_cnpj {
    type: number
    sql: ${TABLE}."property_no_do_cnpj" ;;
  }

  dimension_group: notes_last_contacted {
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

  dimension_group: notes_last_updated {
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

  dimension: num_associated_contacts {
    type: number
    sql: ${TABLE}."property_num_associated_contacts" ;;
  }

  dimension: num_associated_deals {
    type: number
    sql: ${TABLE}."property_num_associated_deals" ;;
  }

  dimension: num_contacted_notes {
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: num_conversion_events {
    type: number
    sql: ${TABLE}."property_num_conversion_events" ;;
  }

  dimension: num_notes {
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."property_numberofemployees" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."property_phone" ;;
  }

  dimension_group: recent_conversion {
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

  dimension: recent_conversion_event_name {
    type: string
    sql: ${TABLE}."property_recent_conversion_event_name" ;;
  }

  dimension_group: recent_deal_close {
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

  dimension: state {
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_state" ;;
  }

  dimension: timezone {
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_timezone" ;;
  }

  dimension: total_money_raised {
    type: string
    sql: ${TABLE}."property_total_money_raised" ;;
  }

  dimension: twitterhandle {
    type: string
    sql: ${TABLE}."property_twitterhandle" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."property_type" ;;
  }

  dimension: web_technologies {
    type: string
    sql: ${TABLE}."property_web_technologies" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."property_website" ;;
  }

  dimension: zip {
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_zip" ;;
  }

  measure: count {
    type: count
    drill_fields: [std_drill*]
  }

  set: std_drill {
    fields: [name, first_conversion_event_name, recent_conversion_event_name]
  }
}
