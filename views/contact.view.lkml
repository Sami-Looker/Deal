view: contact {
  label: "Leads"
  sql_table_name:hubspot_grow.contact ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: campanha {
    label: "Campanha"
    type: string
    sql: ${TABLE}."property_campanha" ;;
  }

  dimension: parceirias {
    label: "Parceiros"
    type: string
    sql: CASE
          WHEN ${campanha} = 'AccountTech - Não Clientes' or ${campanha} = 'AccountTech' or ${campanha} = 'ACSP' or ${campanha} = 'Allya' or ${campanha} = 'Alper - Força de Vendas' or ${campanha} = 'Bradoo Beauty' or ${campanha} = 'Celebrar' or ${campanha} = 'Market Up' or ${campanha} = 'Indica Sami' or ${campanha} = 'Indica Sami (Interno)' or ${campanha} = 'Qipu'
          THEN 'Parceiros' ELSE 'BAU' END;;
  }

  dimension: _fivetran_deleted {
    hidden: yes
    type: yesno
    sql: ${TABLE}."_fivetran_deleted" ;;
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

  dimension: canonical_vid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."canonical_vid" ;;
  }

  dimension: merged_vids {
    hidden: yes
    type: string
    sql: ${TABLE}."merged_vids" ;;
  }

  dimension: profile_url {
    hidden: yes
    type: string
    sql: ${TABLE}."profile_url" ;;
  }

  dimension: property_address {
    hidden: yes
    label: "Address"
    type: string
    sql: ${TABLE}."property_address" ;;
  }

  dimension: property_annualrevenue {
    hidden: yes
    label: "Annual Revenue"
    type: string
    sql: ${TABLE}."property_annualrevenue" ;;
  }

  dimension: property_associatedcompanyid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."property_associatedcompanyid" ;;
  }

  dimension: property_city {
    hidden: yes
    label: "City"
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

  dimension: property_company {
    hidden: yes
    label: "Company"
    type: string
    sql: ${TABLE}."property_company" ;;
  }

  dimension: property_company_size {
    hidden: yes
    label: "Company Size"
    type: string
    sql: ${TABLE}."property_company_size" ;;
  }

  dimension: property_country {
    hidden: yes
    label: "Country"
    type: string
    sql: ${TABLE}."property_country" ;;
  }

  dimension_group: property_createdate {
    hidden: no
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

  dimension: createdate {
    hidden: yes
    label: "Create Date"
    type: date
    sql: ${TABLE}."property_createdate" ;;
  }

  dimension: property_currentlyinworkflow {
    hidden: yes
    type: string
    sql: ${TABLE}."property_currentlyinworkflow" ;;
  }

  dimension: property_date_of_birth {
    hidden: yes
    label: "Date of Birth"
    type: string
    sql: ${TABLE}."property_date_of_birth" ;;
  }

  dimension: property_degree {
    hidden: yes
    label: "Degree"
    type: string
    sql: ${TABLE}."property_degree" ;;
  }

  dimension: property_do_you_have_a_company_ {
    hidden: yes
    type: string
    sql: ${TABLE}."property_do_you_have_a_company_" ;;
  }

  dimension: property_email {
    hidden: yes
    label: "email"
    type: string
    sql: ${TABLE}."property_email" ;;
  }

  dimension: property_engagements_last_meeting_booked_campaign {
    hidden: yes
    type: string
    sql: ${TABLE}."property_engagements_last_meeting_booked_campaign" ;;
  }

  dimension: property_engagements_last_meeting_booked_medium {
    hidden: yes
    type: string
    sql: ${TABLE}."property_engagements_last_meeting_booked_medium" ;;
  }

  dimension: property_engagements_last_meeting_booked_source {
    hidden: yes
    type: string
    sql: ${TABLE}."property_engagements_last_meeting_booked_source" ;;
  }

  dimension: property_external_blog_subscription_status {
    hidden: yes
    type: string
    sql: ${TABLE}."property_external_blog_subscription_status" ;;
  }

  dimension: property_fax {
    hidden: yes
    type: string
    sql: ${TABLE}."property_fax" ;;
  }

  dimension: property_field_of_study {
    hidden: yes
    type: string
    sql: ${TABLE}."property_field_of_study" ;;
  }

  dimension_group: property_first_deal_created {
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

  dimension: property_gender {
    hidden: yes
    type: string
    sql: ${TABLE}."property_gender" ;;
  }

  dimension: property_graduation_date {
    hidden: yes
    type: string
    sql: ${TABLE}."property_graduation_date" ;;
  }

  dimension: property_hs_all_accessible_team_ids {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_all_accessible_team_ids" ;;
  }

  dimension: property_hs_all_owner_ids {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_all_owner_ids" ;;
  }

  dimension: property_hs_all_team_ids {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_all_team_ids" ;;
  }

  dimension: property_hs_analytics_average_page_views {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_average_page_views" ;;
  }

  dimension: property_hs_analytics_first_referrer {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_first_referrer" ;;
  }

  dimension_group: property_hs_analytics_first_timestamp {
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

  dimension: property_hs_analytics_first_touch_converting_campaign {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_first_touch_converting_campaign" ;;
  }

  dimension: property_hs_analytics_first_url {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_first_url" ;;
  }

  dimension_group: property_hs_analytics_first_visit_timestamp {
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

  dimension: property_hs_analytics_last_referrer {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_last_referrer" ;;
  }

  dimension_group: property_hs_analytics_last_timestamp {
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

  dimension: property_hs_analytics_last_touch_converting_campaign {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_last_touch_converting_campaign" ;;
  }

  dimension: property_hs_analytics_last_url {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_analytics_last_url" ;;
  }

  dimension_group: property_hs_analytics_last_visit_timestamp {
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

  dimension: property_hs_analytics_num_event_completions {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_num_event_completions" ;;
  }

  dimension: property_hs_analytics_num_page_views {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_num_page_views" ;;
  }

  dimension: property_hs_analytics_num_visits {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_num_visits" ;;
  }

  dimension: property_hs_analytics_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_analytics_revenue" ;;
  }

  dimension: property_hs_analytics_source {
    label: "Fonte de Aquisição"
    hidden: no
    type: string
    sql: CASE
        WHEN ${property_hs_analytics_source_data_2} = 'fb / display' OR ${property_hs_analytics_source_data_2} = 'ig / display' THEN 'FACEBOOK'
        ELSE ${TABLE}."property_hs_analytics_source"
        END;;
  }

  dimension: property_hs_analytics_source_data_1 {
    label: "Fonte de Aquisição - Sub1"
    hidden: no
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_1" ;;
  }

  dimension: property_hs_analytics_source_data_2 {
    label: "Fonte de Aquisição - Sub2"
    hidden: no
    type: string
    sql: ${TABLE}."property_hs_analytics_source_data_2" ;;
  }

  dimension: property_hs_avatar_filemanager_key {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_avatar_filemanager_key" ;;
  }

  dimension: property_hs_buying_role {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_buying_role" ;;
  }

  dimension: property_hs_content_membership_notes {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_content_membership_notes" ;;
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_content_membership_registration_domain_sent_to" ;;
  }

  dimension: property_hs_content_membership_status {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_content_membership_status" ;;
  }

  dimension: property_hs_conversations_visitor_email {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_conversations_visitor_email" ;;
  }

  dimension: property_hs_created_by_conversations {
    hidden: yes
    type: yesno
    sql: ${TABLE}."property_hs_created_by_conversations" ;;
  }

  dimension: property_hs_email_bounce {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_email_bounce" ;;
  }

  dimension: property_hs_email_click {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_email_click" ;;
  }

  dimension: property_hs_email_customer_quarantined_reason {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_customer_quarantined_reason" ;;
  }

  dimension: property_hs_email_delivered {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_email_delivered" ;;
  }

  dimension_group: property_hs_email_first_click {
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
    sql: ${TABLE}."property_hs_email_first_click_date" ;;
  }

  dimension_group: property_hs_email_first_open {
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
    sql: ${TABLE}."property_hs_email_first_open_date" ;;
  }

  dimension_group: property_hs_email_first_send {
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
    sql: ${TABLE}."property_hs_email_first_send_date" ;;
  }

  dimension: property_hs_email_hard_bounce_reason {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_hard_bounce_reason" ;;
  }

  dimension: property_hs_email_hard_bounce_reason_enum {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_hard_bounce_reason_enum" ;;
  }

  dimension_group: property_hs_email_last_click {
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
    sql: ${TABLE}."property_hs_email_last_click_date" ;;
  }

  dimension: property_hs_email_last_email_name {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_last_email_name" ;;
  }

  dimension_group: property_hs_email_last_open {
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
    sql: ${TABLE}."property_hs_email_last_open_date" ;;
  }

  dimension_group: property_hs_email_last_send {
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
    sql: ${TABLE}."property_hs_email_last_send_date" ;;
  }

  dimension: property_hs_email_open {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_email_open" ;;
  }

  dimension: property_hs_email_optout_9469334 {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_optout_9469334" ;;
  }

  dimension: property_hs_email_optout_9469731 {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_optout_9469731" ;;
  }

  dimension: property_hs_email_optout_9710213 {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_optout_9710213" ;;
  }

  dimension: property_hs_email_quarantined_reason {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_email_quarantined_reason" ;;
  }

  dimension: property_hs_email_sends_since_last_engagement {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_email_sends_since_last_engagement" ;;
  }

  dimension: property_hs_emailconfirmationstatus {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_emailconfirmationstatus" ;;
  }

  dimension: property_hs_facebook_click_id {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_facebook_click_id" ;;
  }

  dimension: property_hs_facebookid {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_facebookid" ;;
  }

  dimension: property_hs_feedback_last_nps_follow_up {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_feedback_last_nps_follow_up" ;;
  }

  dimension: property_hs_feedback_last_nps_rating {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_feedback_last_nps_rating" ;;
  }

  dimension: property_hs_first_engagement_descr {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_first_engagement_descr" ;;
  }

  dimension: property_hs_first_engagement_object_id {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_first_engagement_object_id" ;;
  }

  dimension: property_hs_first_engagement_object_type {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_first_engagement_object_type" ;;
  }

  dimension: property_hs_google_click_id {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_google_click_id" ;;
  }

  dimension: property_hs_googleplusid {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_googleplusid" ;;
  }

  dimension: property_hs_ip_timezone {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_ip_timezone" ;;
  }

  dimension: property_hs_is_unworked {
    hidden: yes
    type: yesno
    sql: ${TABLE}."property_hs_is_unworked" ;;
  }

  dimension: property_hs_language {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_language" ;;
  }

  dimension_group: property_hs_last_sales_activity {
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

  dimension_group: property_hs_last_sales_activity_timestamp {
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

  dimension: property_hs_lead_status {
    label: "Lead Status"
    hidden: no
    type: string
    sql: ${TABLE}."property_hs_lead_status" ;;
  }

  dimension: property_hs_legal_basis {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_legal_basis" ;;
  }

  dimension_group: property_hs_lifecyclestage_customer {
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
    sql: ${TABLE}."property_hs_lifecyclestage_customer_date" ;;
  }

  dimension_group: property_hs_lifecyclestage_lead {
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
    sql: ${TABLE}."property_hs_lifecyclestage_lead_date" ;;
  }

  dimension_group: property_hs_lifecyclestage_opportunity {
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
    sql: ${TABLE}."property_hs_lifecyclestage_opportunity_date" ;;
  }

  dimension_group: property_hs_lifecyclestage_subscriber {
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
    sql: ${TABLE}."property_hs_lifecyclestage_subscriber_date" ;;
  }

  dimension: property_hs_linkedinid {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_linkedinid" ;;
  }

  dimension: property_hs_marketable_reason_id {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_marketable_reason_id" ;;
  }

  dimension: property_hs_marketable_reason_type {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_marketable_reason_type" ;;
  }

  dimension: property_hs_marketable_status {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_marketable_status" ;;
  }

  dimension: property_hs_marketable_until_renewal {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_marketable_until_renewal" ;;
  }

  dimension: property_hs_merged_object_ids {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_merged_object_ids" ;;
  }

  dimension: property_hs_persona {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_persona" ;;
  }

  dimension: property_hs_predictivecontactscore_v_2 {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_predictivecontactscore_v_2" ;;
  }

  dimension: property_hs_predictivecontactscorebucket {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_predictivecontactscorebucket" ;;
  }

  dimension: property_hs_predictivescoringtier {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_predictivescoringtier" ;;
  }

  dimension_group: property_hs_sa_first_engagement {
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
    sql: ${TABLE}."property_hs_sa_first_engagement_date" ;;
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

  dimension: property_hs_social_facebook_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_social_facebook_clicks" ;;
  }

  dimension: property_hs_social_google_plus_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_social_google_plus_clicks" ;;
  }

  dimension: property_hs_social_linkedin_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_social_linkedin_clicks" ;;
  }

  dimension: property_hs_social_num_broadcast_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_social_num_broadcast_clicks" ;;
  }

  dimension: property_hs_social_twitter_clicks {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hs_social_twitter_clicks" ;;
  }

  dimension: property_hs_twitterid {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hs_twitterid" ;;
  }

  dimension: property_hs_user_ids_of_all_owners {
    hidden: yes
    type: string
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

  dimension: property_hubspot_owner_id {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hubspot_owner_id" ;;
  }

  dimension: property_hubspot_team_id {
    hidden: yes
    type: string
    sql: ${TABLE}."property_hubspot_team_id" ;;
  }

  dimension: property_hubspotscore {
    hidden: yes
    type: number
    sql: ${TABLE}."property_hubspotscore" ;;
  }

  dimension: property_industry {
    hidden: yes
    type: string
    sql: ${TABLE}."property_industry" ;;
  }

  dimension: property_ip_city {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_city" ;;
  }

  dimension: property_ip_country {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_country" ;;
  }

  dimension: property_ip_country_code {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_country_code" ;;
  }

  dimension: property_ip_latlon {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_latlon" ;;
  }

  dimension: property_ip_state {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_state" ;;
  }

  dimension: property_ip_state_code {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_state_code" ;;
  }

  dimension: property_ip_zipcode {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ip_zipcode" ;;
  }

  dimension: property_job_function {
    hidden: yes
    type: string
    sql: ${TABLE}."property_job_function" ;;
  }

  dimension: property_jobtitle {
    hidden: yes
    type: string
    sql: ${TABLE}."property_jobtitle" ;;
  }

  dimension_group: property_lastmodifieddate {
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
    sql: ${TABLE}."property_lastmodifieddate" ;;
  }

  dimension: property_lastname {
    hidden: yes
    label: "Last Name"
    type: string
    sql: ${TABLE}."property_lastname" ;;
  }

  dimension: property_firstname {
    hidden: yes
    label: "First Name"
    type: string
    sql: ${TABLE}."property_firstname" ;;
  }

  dimension: property_name {
    hidden: yes
    label: "Complete Name"
    type: string
    sql: Concat(${TABLE}."property_firstname",' ', ${TABLE}."property_lastname") ;;
  }

  dimension: property_lifecyclestage {
    hidden: yes
    type: string
    sql: ${TABLE}."property_lifecyclestage" ;;
  }

  dimension: property_link_de_reuniao {
    hidden: yes
    type: string
    sql: ${TABLE}."property_link_de_reuniao" ;;
  }

  dimension: property_linkedinbio {
    hidden: yes
    type: string
    sql: ${TABLE}."property_linkedinbio" ;;
  }

  dimension: property_marital_status {
    hidden: yes
    type: string
    sql: ${TABLE}."property_marital_status" ;;
  }

  dimension: property_message {
    hidden: yes
    type: string
    sql: ${TABLE}."property_message" ;;
  }

  dimension: property_military_status {
    hidden: yes
    type: string
    sql: ${TABLE}."property_military_status" ;;
  }

  dimension: property_mobilephone {
    hidden: yes
    type: string
    sql: ${TABLE}."property_mobilephone" ;;
  }

  dimension: property_motivo_de_declinio {
    hidden: yes
    type: string
    sql: ${TABLE}."property_motivo_de_declinio" ;;
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

  dimension: property_num_associated_deals {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_associated_deals" ;;
  }

  dimension: property_num_contacted_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: property_num_notes {
    hidden: yes
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: property_numemployees {
    hidden: yes
    type: string
    sql: ${TABLE}."property_numemployees" ;;
  }

  dimension: property_numero_para_contato {
    hidden: yes
    type: string
    sql: ${TABLE}."property_numero_para_contato" ;;
  }

  dimension: property_opt_in_whatsapp {
    hidden: yes
    type: string
    sql: ${TABLE}."property_opt_in_whatsapp" ;;
  }

  dimension: property_owneremail {
    hidden: yes
    type: string
    sql: ${TABLE}."property_owneremail" ;;
  }

  dimension: property_ownername {
    hidden: yes
    type: string
    sql: ${TABLE}."property_ownername" ;;
  }

  dimension: property_phone {
    hidden: yes
    label: "Phone"
    type: string
    sql: ${TABLE}."property_phone" ;;
  }

  dimension: property_photo {
    hidden: yes
    type: string
    sql: ${TABLE}."property_photo" ;;
  }

  dimension: property_possui_cnpj_ {
    hidden: yes
    type: string
    sql: ${TABLE}."property_possui_cnpj_" ;;
  }

  dimension: property_qualification {
    hidden: yes
    type: string
    sql: ${TABLE}."property_qualification" ;;
  }

  dimension: property_recent_deal_amount {
    hidden: yes
    type: number
    sql: ${TABLE}."property_recent_deal_amount" ;;
  }

  dimension_group: property_recent_deal_close {
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

  dimension: property_relationship_status {
    hidden: yes
    type: string
    sql: ${TABLE}."property_relationship_status" ;;
  }

  dimension: property_salutation {
    hidden: yes
    type: string
    sql: ${TABLE}."property_salutation" ;;
  }

  dimension: property_school {
    hidden: yes
    type: string
    sql: ${TABLE}."property_school" ;;
  }

  dimension: property_seniority {
    hidden: yes
    type: string
    sql: ${TABLE}."property_seniority" ;;
  }

  dimension: property_start_date {
    hidden: yes
    type: string
    sql: ${TABLE}."property_start_date" ;;
  }

  dimension: property_state {
    hidden: yes
    type: string
    sql: ${TABLE}."property_state" ;;
  }

  dimension: property_total_revenue {
    hidden: yes
    type: number
    sql: ${TABLE}."property_total_revenue" ;;
  }

  dimension: property_twitterbio {
    hidden: yes
    type: string
    sql: ${TABLE}."property_twitterbio" ;;
  }

  dimension: property_twitterhandle {
    hidden: yes
    type: string
    sql: ${TABLE}."property_twitterhandle" ;;
  }

  dimension: property_twitterprofilephoto {
    hidden: yes
    type: string
    sql: ${TABLE}."property_twitterprofilephoto" ;;
  }

  dimension: property_utilizacao_em_sp_capital_ {
    hidden: yes
    type: string
    sql: ${TABLE}."property_utilizacao_em_sp_capital_" ;;
  }

  dimension: property_website {
    hidden: yes
    type: string
    sql: ${TABLE}."property_website" ;;
  }

  dimension: property_work_email {
    hidden: yes
    type: string
    sql: ${TABLE}."property_work_email" ;;
  }

  dimension: property_zip {
    hidden: yes
    type: string
    sql: ${TABLE}."property_zip" ;;
  }

  measure: count {
    hidden: no
    type: count
    drill_fields: [id]
  }
}
