view: company {
  label: "Empresas"
  sql_table_name: hubspot_.company ;;
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
    hidden: yes
    type: yesno
    sql: ${TABLE}."is_deleted" ;;
  }

  dimension: portal_id {
    hidden: yes
    type: number
    sql: ${TABLE}."portal_id" ;;
  }

  dimension: Address {
    hidden: yes
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_address" ;;
  }

  dimension: Annualrevenue {
    hidden: yes
    label: "Annual Revenue"
    type: number
    sql: ${TABLE}."property_annualrevenue" ;;
  }

  dimension: City {
    hidden: yes
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_city" ;;
  }

  dimension_group: property_closedate {
    hidden: yes
    label: "Close Date"
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

  dimension: Country {
    hidden: yes
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_country" ;;
  }

  dimension_group: property_createdate {
    hidden: yes
    label: "Create Date"
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
    hidden: yes
    type: number
    sql: ${TABLE}."property_days_to_close" ;;
  }

  dimension: description {
    hidden: yes
    type: string
    sql: ${TABLE}."property_description" ;;
  }

  dimension: domain {
    hidden: yes
    type: string
    sql: ${TABLE}."property_domain" ;;
  }

  dimension: facebook_company_page {
    hidden: yes
    type: string
    sql: ${TABLE}."property_facebook_company_page" ;;
  }

  dimension_group: first_contact_createdate {
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
    sql: ${TABLE}."property_first_contact_createdate" ;;
  }

  dimension_group: first_conversion {
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
    sql: ${TABLE}."property_first_conversion_date" ;;
  }

  dimension: first_conversion_event_name {
    hidden: yes
    type: string
    sql: ${TABLE}."property_first_conversion_event_name" ;;
  }

  dimension_group: first_deal_created {
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
    sql: ${TABLE}."property_first_deal_created_date" ;;
  }

  dimension: founded_year {
    hidden: yes
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
    sql: ${TABLE}."property_hs_analytics_first_timestamp" ;;
  }

  dimension_group: hs_analytics_first_visit_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_first_visit_timestamp" ;;
  }

  dimension_group: hs_analytics_last_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_last_timestamp" ;;
  }

  dimension: hs_analytics_last_touch_converting_campaign {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_last_touch_converting_campaign" ;;
  }

  dimension_group: hs_analytics_last_visit_timestamp {
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
    sql: ${TABLE}."property_hs_analytics_last_visit_timestamp" ;;
  }

  dimension: hs_analytics_num_page_views {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_num_page_views" ;;
  }

  dimension: hs_analytics_num_visits {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_num_visits" ;;
  }

  dimension: hs_analytics_source {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_source" ;;
  }

  dimension: hs_analytics_source_data_1 {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_1" ;;
  }

  dimension: hs_analytics_source_data_2 {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_2" ;;
  }

  dimension: hs_created_by_user_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_created_by_user_id" ;;
  }

  dimension: hs_is_target_account {
    hidden: yes
    type: yesno
    sql: ${TABLE}."property_hs_is_target_account" ;;
  }

  dimension_group: hs_last_sales_activity {
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
    sql: ${TABLE}."property_hs_last_sales_activity_date" ;;
  }

  dimension_group: hs_last_sales_activity_timestamp {
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
    sql: ${TABLE}."property_hs_last_sales_activity_timestamp" ;;
  }

  dimension_group: hs_lastmodifieddate {
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

  dimension: hs_num_blockers {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_num_blockers" ;;
  }

  dimension: hs_num_child_companies {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_num_child_companies" ;;
  }

  dimension: hs_num_contacts_with_buying_roles {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_num_contacts_with_buying_roles" ;;
  }

  dimension: hs_num_decision_makers {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_num_decision_makers" ;;
  }

  dimension: hs_num_open_deals {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_num_open_deals" ;;
  }

  dimension: hs_predictivecontactscore_v_2 {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_predictivecontactscore_v_2" ;;
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

  dimension: hs_target_account_probability {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_target_account_probability" ;;
  }

  dimension: hs_total_deal_value {
    hidden: yes
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
    hidden: yes
    type: yesno
    sql: ${TABLE}."property_is_public" ;;
  }

  dimension: lifecyclestage {
    hidden: yes
    type: string
    sql: ${TABLE}."property_lifecyclestage" ;;
  }

  dimension: linkedin_company_page {
    label: "LinkedIN"
    type: string
    sql: ${TABLE}."property_linkedin_company_page" ;;
  }

  dimension: linkedinbio {
    hidden: yes
    type: string
    sql: ${TABLE}."property_linkedinbio" ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."property_name" ;;
  }

  dimension: no_do_cnpj {
    hidden: yes
    type: string
    sql: ${TABLE}."property_no_do_cnpj" ;;
  }

  dimension_group: notes_last_contacted {
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

  dimension_group: notes_last_updated {
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

  dimension: num_associated_contacts {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_associated_contacts" ;;
  }

  dimension: num_associated_deals {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_associated_deals" ;;
  }

  dimension: num_contacted_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: num_conversion_events {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_conversion_events" ;;
  }

  dimension: num_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: number_of_employees {
    hidden: yes
    type: number
    sql: ${TABLE}."property_numberofemployees" ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}."property_phone" ;;
  }

  dimension_group: recent_conversion {
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
    sql: ${TABLE}."property_recent_conversion_date" ;;
  }

  dimension: recent_conversion_event_name {
    hidden: yes
    type: string
    sql: ${TABLE}."property_recent_conversion_event_name" ;;
  }

  dimension_group: recent_deal_close {
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
    sql: ${TABLE}."property_recent_deal_close_date" ;;
  }

  dimension: state {
    hidden: yes
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_state" ;;
  }

  dimension: timezone {
    hidden: yes
    group_label: "Location"
    type: string
    sql: ${TABLE}."property_timezone" ;;
  }

  dimension: total_money_raised {
    hidden: yes
    type: string
    sql: ${TABLE}."property_total_money_raised" ;;
  }

  dimension: twitterhandle {
    label: "Twitter"
    type: string
    sql: ${TABLE}."property_twitterhandle" ;;
  }

  dimension: web_technologies {
    hidden: yes
    type: string
    sql: ${TABLE}."property_web_technologies" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."property_website" ;;
  }

  dimension: zip {
    group_label: "Location"
    hidden: yes
    type: string
    sql: ${TABLE}."property_zip" ;;
  }

  dimension: alias {
    hidden: no
    type: string
    sql: ${companies.alias} ;;
  }
  dimension: capital {
    type: number
    sql: ${companies.capital} ;;
  }

  dimension: cnpj {
    label: "CNPJ"
    hidden: no
    type: string
    sql: ${companies.cnpj} ;;
  }
  dimension: email {
    label: "e-mail"
    type: string
    sql: ${companies.email} ;;
  }
  dimension: founded {
    type: string
    sql: ${companies.founded} ;;
  }
  dimension: Nome {
    label: "Nome"
    type: string
    sql: ${companies.name} ;;
  }

  dimension: main_phone {
    type: string
    sql: ${companies.phone} ;;
  }

  dimension: phone_alt {
    type: string
    sql: ${companies.phone_alt} ;;
  }
  dimension: size {
    type: string
    sql: ${companies.size} ;;
  }

  dimension: address {
    label: "Address"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${companies_addressinfo.address} ;;
  }

  dimension: city {
    label: "City"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${companies_addressinfo.city};;
  }

  dimension: complement {
    label: "Complement"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${companies_addressinfo.complement};;
  }

  dimension: district {
    label: "District"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${companies_addressinfo.district} ;;
  }

  dimension: number {
    label: "Number"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${companies_addressinfo.number} ;;
  }

  dimension: state2 {
    label: "State"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${companies_addressinfo.state} ;;
  }

  dimension: zipcode {
    label: "Zipcode"
    group_label: "Location"
    hidden: no
    type: zipcode
    sql: ${companies_addressinfo.zipcode} ;;
  }

  dimension: complete_address {
    group_label: "Location"
    label: "Complete Address"
    type: string
    sql: Concat(${companies_addressinfo.address},', ', ${companies_addressinfo.number},' - ',${companies_addressinfo.complement},' - ',${companies_addressinfo.district}, ' - CEP ',${companies_addressinfo.zipcode}) ;;
  }

  measure: count {
    type: count
  }

}
