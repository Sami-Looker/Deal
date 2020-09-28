view: contact {
  sql_table_name: hubspot.contact ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_fivetran_deleted" ;;
  }

  dimension_group: _fivetran_synced {
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
    type: number
    value_format_name: id
    sql: ${TABLE}."canonical_vid" ;;
  }

  dimension: merged_vids {
    type: string
    sql: ${TABLE}."merged_vids" ;;
  }

  dimension: profile_url {
    type: string
    sql: ${TABLE}."profile_url" ;;
  }

  dimension: property_address {
    type: string
    sql: ${TABLE}."property_address" ;;
  }

  dimension: property_annualrevenue {
    type: string
    sql: ${TABLE}."property_annualrevenue" ;;
  }

  dimension: property_associatedcompanyid {
    type: number
    value_format_name: id
    sql: ${TABLE}."property_associatedcompanyid" ;;
  }

  dimension: property_city {
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

  dimension: property_company {
    type: string
    sql: ${TABLE}."property_company" ;;
  }

  dimension: property_company_size {
    type: string
    sql: ${TABLE}."property_company_size" ;;
  }

  dimension: property_country {
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

  dimension: property_currentlyinworkflow {
    type: string
    sql: ${TABLE}."property_currentlyinworkflow" ;;
  }

  dimension: property_date_of_birth {
    type: string
    sql: ${TABLE}."property_date_of_birth" ;;
  }

  dimension: property_degree {
    type: string
    sql: ${TABLE}."property_degree" ;;
  }

  dimension: property_do_you_have_a_company_ {
    type: string
    sql: ${TABLE}."property_do_you_have_a_company_" ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}."property_email" ;;
  }

  dimension: property_engagements_last_meeting_booked_campaign {
    type: string
    sql: ${TABLE}."property_engagements_last_meeting_booked_campaign" ;;
  }

  dimension: property_engagements_last_meeting_booked_medium {
    type: string
    sql: ${TABLE}."property_engagements_last_meeting_booked_medium" ;;
  }

  dimension: property_engagements_last_meeting_booked_source {
    type: string
    sql: ${TABLE}."property_engagements_last_meeting_booked_source" ;;
  }

  dimension: property_external_blog_subscription_status {
    type: string
    sql: ${TABLE}."property_external_blog_subscription_status" ;;
  }

  dimension: property_fax {
    type: string
    sql: ${TABLE}."property_fax" ;;
  }

  dimension: property_field_of_study {
    type: string
    sql: ${TABLE}."property_field_of_study" ;;
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

  dimension: property_firstname {
    type: string
    sql: ${TABLE}."property_firstname" ;;
  }

  dimension: property_gender {
    type: string
    sql: ${TABLE}."property_gender" ;;
  }

  dimension: property_graduation_date {
    type: string
    sql: ${TABLE}."property_graduation_date" ;;
  }

  dimension: property_hs_all_accessible_team_ids {
    type: string
    sql: ${TABLE}."property_hs_all_accessible_team_ids" ;;
  }

  dimension: property_hs_all_owner_ids {
    type: string
    sql: ${TABLE}."property_hs_all_owner_ids" ;;
  }

  dimension: property_hs_all_team_ids {
    type: string
    sql: ${TABLE}."property_hs_all_team_ids" ;;
  }

  dimension: property_hs_analytics_average_page_views {
    type: number
    sql: ${TABLE}."property_hs_analytics_average_page_views" ;;
  }

  dimension: property_hs_analytics_first_referrer {
    type: string
    sql: ${TABLE}."property_hs_analytics_first_referrer" ;;
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

  dimension: property_hs_analytics_first_touch_converting_campaign {
    type: string
    sql: ${TABLE}."property_hs_analytics_first_touch_converting_campaign" ;;
  }

  dimension: property_hs_analytics_first_url {
    type: string
    sql: ${TABLE}."property_hs_analytics_first_url" ;;
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

  dimension: property_hs_analytics_last_referrer {
    type: string
    sql: ${TABLE}."property_hs_analytics_last_referrer" ;;
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

  dimension: property_hs_analytics_last_url {
    type: string
    sql: ${TABLE}."property_hs_analytics_last_url" ;;
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

  dimension: property_hs_analytics_num_event_completions {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_event_completions" ;;
  }

  dimension: property_hs_analytics_num_page_views {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_page_views" ;;
  }

  dimension: property_hs_analytics_num_visits {
    type: number
    sql: ${TABLE}."property_hs_analytics_num_visits" ;;
  }

  dimension: property_hs_analytics_revenue {
    type: number
    sql: ${TABLE}."property_hs_analytics_revenue" ;;
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

  dimension: property_hs_avatar_filemanager_key {
    type: string
    sql: ${TABLE}."property_hs_avatar_filemanager_key" ;;
  }

  dimension: property_hs_buying_role {
    type: string
    sql: ${TABLE}."property_hs_buying_role" ;;
  }

  dimension: property_hs_content_membership_notes {
    type: string
    sql: ${TABLE}."property_hs_content_membership_notes" ;;
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    type: string
    sql: ${TABLE}."property_hs_content_membership_registration_domain_sent_to" ;;
  }

  dimension: property_hs_content_membership_status {
    type: string
    sql: ${TABLE}."property_hs_content_membership_status" ;;
  }

  dimension: property_hs_conversations_visitor_email {
    type: string
    sql: ${TABLE}."property_hs_conversations_visitor_email" ;;
  }

  dimension: property_hs_created_by_conversations {
    type: yesno
    sql: ${TABLE}."property_hs_created_by_conversations" ;;
  }

  dimension: property_hs_email_bounce {
    type: number
    sql: ${TABLE}."property_hs_email_bounce" ;;
  }

  dimension: property_hs_email_click {
    type: number
    sql: ${TABLE}."property_hs_email_click" ;;
  }

  dimension: property_hs_email_customer_quarantined_reason {
    type: string
    sql: ${TABLE}."property_hs_email_customer_quarantined_reason" ;;
  }

  dimension: property_hs_email_delivered {
    type: number
    sql: ${TABLE}."property_hs_email_delivered" ;;
  }

  dimension_group: property_hs_email_first_click {
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
    type: string
    sql: ${TABLE}."property_hs_email_hard_bounce_reason" ;;
  }

  dimension: property_hs_email_hard_bounce_reason_enum {
    type: string
    sql: ${TABLE}."property_hs_email_hard_bounce_reason_enum" ;;
  }

  dimension_group: property_hs_email_last_click {
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
    type: string
    sql: ${TABLE}."property_hs_email_last_email_name" ;;
  }

  dimension_group: property_hs_email_last_open {
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
    type: number
    sql: ${TABLE}."property_hs_email_open" ;;
  }

  dimension: property_hs_email_optout_9469334 {
    type: string
    sql: ${TABLE}."property_hs_email_optout_9469334" ;;
  }

  dimension: property_hs_email_optout_9469731 {
    type: string
    sql: ${TABLE}."property_hs_email_optout_9469731" ;;
  }

  dimension: property_hs_email_optout_9710213 {
    type: string
    sql: ${TABLE}."property_hs_email_optout_9710213" ;;
  }

  dimension: property_hs_email_quarantined_reason {
    type: string
    sql: ${TABLE}."property_hs_email_quarantined_reason" ;;
  }

  dimension: property_hs_email_sends_since_last_engagement {
    type: number
    sql: ${TABLE}."property_hs_email_sends_since_last_engagement" ;;
  }

  dimension: property_hs_emailconfirmationstatus {
    type: string
    sql: ${TABLE}."property_hs_emailconfirmationstatus" ;;
  }

  dimension: property_hs_facebook_click_id {
    type: string
    sql: ${TABLE}."property_hs_facebook_click_id" ;;
  }

  dimension: property_hs_facebookid {
    type: string
    sql: ${TABLE}."property_hs_facebookid" ;;
  }

  dimension: property_hs_feedback_last_nps_follow_up {
    type: string
    sql: ${TABLE}."property_hs_feedback_last_nps_follow_up" ;;
  }

  dimension: property_hs_feedback_last_nps_rating {
    type: string
    sql: ${TABLE}."property_hs_feedback_last_nps_rating" ;;
  }

  dimension: property_hs_first_engagement_descr {
    type: string
    sql: ${TABLE}."property_hs_first_engagement_descr" ;;
  }

  dimension: property_hs_first_engagement_object_id {
    type: number
    sql: ${TABLE}."property_hs_first_engagement_object_id" ;;
  }

  dimension: property_hs_first_engagement_object_type {
    type: string
    sql: ${TABLE}."property_hs_first_engagement_object_type" ;;
  }

  dimension: property_hs_google_click_id {
    type: string
    sql: ${TABLE}."property_hs_google_click_id" ;;
  }

  dimension: property_hs_googleplusid {
    type: string
    sql: ${TABLE}."property_hs_googleplusid" ;;
  }

  dimension: property_hs_ip_timezone {
    type: string
    sql: ${TABLE}."property_hs_ip_timezone" ;;
  }

  dimension: property_hs_is_unworked {
    type: yesno
    sql: ${TABLE}."property_hs_is_unworked" ;;
  }

  dimension: property_hs_language {
    type: string
    sql: ${TABLE}."property_hs_language" ;;
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

  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}."property_hs_lead_status" ;;
  }

  dimension: property_hs_legal_basis {
    type: string
    sql: ${TABLE}."property_hs_legal_basis" ;;
  }

  dimension_group: property_hs_lifecyclestage_customer {
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
    type: string
    sql: ${TABLE}."property_hs_linkedinid" ;;
  }

  dimension: property_hs_marketable_reason_id {
    type: string
    sql: ${TABLE}."property_hs_marketable_reason_id" ;;
  }

  dimension: property_hs_marketable_reason_type {
    type: string
    sql: ${TABLE}."property_hs_marketable_reason_type" ;;
  }

  dimension: property_hs_marketable_status {
    type: string
    sql: ${TABLE}."property_hs_marketable_status" ;;
  }

  dimension: property_hs_marketable_until_renewal {
    type: string
    sql: ${TABLE}."property_hs_marketable_until_renewal" ;;
  }

  dimension: property_hs_merged_object_ids {
    type: string
    sql: ${TABLE}."property_hs_merged_object_ids" ;;
  }

  dimension: property_hs_persona {
    type: string
    sql: ${TABLE}."property_hs_persona" ;;
  }

  dimension: property_hs_predictivecontactscore_v_2 {
    type: number
    sql: ${TABLE}."property_hs_predictivecontactscore_v_2" ;;
  }

  dimension: property_hs_predictivecontactscorebucket {
    type: string
    sql: ${TABLE}."property_hs_predictivecontactscorebucket" ;;
  }

  dimension: property_hs_predictivescoringtier {
    type: string
    sql: ${TABLE}."property_hs_predictivescoringtier" ;;
  }

  dimension_group: property_hs_sa_first_engagement {
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
    type: number
    sql: ${TABLE}."property_hs_social_facebook_clicks" ;;
  }

  dimension: property_hs_social_google_plus_clicks {
    type: number
    sql: ${TABLE}."property_hs_social_google_plus_clicks" ;;
  }

  dimension: property_hs_social_linkedin_clicks {
    type: number
    sql: ${TABLE}."property_hs_social_linkedin_clicks" ;;
  }

  dimension: property_hs_social_num_broadcast_clicks {
    type: number
    sql: ${TABLE}."property_hs_social_num_broadcast_clicks" ;;
  }

  dimension: property_hs_social_twitter_clicks {
    type: number
    sql: ${TABLE}."property_hs_social_twitter_clicks" ;;
  }

  dimension: property_hs_twitterid {
    type: string
    sql: ${TABLE}."property_hs_twitterid" ;;
  }

  dimension: property_hs_user_ids_of_all_owners {
    type: string
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
    type: string
    sql: ${TABLE}."property_hubspot_owner_id" ;;
  }

  dimension: property_hubspot_team_id {
    type: string
    sql: ${TABLE}."property_hubspot_team_id" ;;
  }

  dimension: property_hubspotscore {
    type: number
    sql: ${TABLE}."property_hubspotscore" ;;
  }

  dimension: property_industry {
    type: string
    sql: ${TABLE}."property_industry" ;;
  }

  dimension: property_ip_city {
    type: string
    sql: ${TABLE}."property_ip_city" ;;
  }

  dimension: property_ip_country {
    type: string
    sql: ${TABLE}."property_ip_country" ;;
  }

  dimension: property_ip_country_code {
    type: string
    sql: ${TABLE}."property_ip_country_code" ;;
  }

  dimension: property_ip_latlon {
    type: string
    sql: ${TABLE}."property_ip_latlon" ;;
  }

  dimension: property_ip_state {
    type: string
    sql: ${TABLE}."property_ip_state" ;;
  }

  dimension: property_ip_state_code {
    type: string
    sql: ${TABLE}."property_ip_state_code" ;;
  }

  dimension: property_ip_zipcode {
    type: string
    sql: ${TABLE}."property_ip_zipcode" ;;
  }

  dimension: property_job_function {
    type: string
    sql: ${TABLE}."property_job_function" ;;
  }

  dimension: property_jobtitle {
    type: string
    sql: ${TABLE}."property_jobtitle" ;;
  }

  dimension_group: property_lastmodifieddate {
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
    type: string
    sql: ${TABLE}."property_lastname" ;;
  }

  dimension: property_lifecyclestage {
    type: string
    sql: ${TABLE}."property_lifecyclestage" ;;
  }

  dimension: property_link_de_reuniao {
    type: string
    sql: ${TABLE}."property_link_de_reuniao" ;;
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}."property_linkedinbio" ;;
  }

  dimension: property_marital_status {
    type: string
    sql: ${TABLE}."property_marital_status" ;;
  }

  dimension: property_message {
    type: string
    sql: ${TABLE}."property_message" ;;
  }

  dimension: property_military_status {
    type: string
    sql: ${TABLE}."property_military_status" ;;
  }

  dimension: property_mobilephone {
    type: string
    sql: ${TABLE}."property_mobilephone" ;;
  }

  dimension: property_motivo_de_declinio {
    type: string
    sql: ${TABLE}."property_motivo_de_declinio" ;;
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

  dimension: property_num_associated_deals {
    type: number
    sql: ${TABLE}."property_num_associated_deals" ;;
  }

  dimension: property_num_contacted_notes {
    type: number
    sql: ${TABLE}."property_num_contacted_notes" ;;
  }

  dimension: property_num_notes {
    type: number
    sql: ${TABLE}."property_num_notes" ;;
  }

  dimension: property_numemployees {
    type: string
    sql: ${TABLE}."property_numemployees" ;;
  }

  dimension: property_numero_para_contato {
    type: string
    sql: ${TABLE}."property_numero_para_contato" ;;
  }

  dimension: property_opt_in_whatsapp {
    type: string
    sql: ${TABLE}."property_opt_in_whatsapp" ;;
  }

  dimension: property_owneremail {
    type: string
    sql: ${TABLE}."property_owneremail" ;;
  }

  dimension: property_ownername {
    type: string
    sql: ${TABLE}."property_ownername" ;;
  }

  dimension: property_phone {
    type: string
    sql: ${TABLE}."property_phone" ;;
  }

  dimension: property_photo {
    type: string
    sql: ${TABLE}."property_photo" ;;
  }

  dimension: property_possui_cnpj_ {
    type: string
    sql: ${TABLE}."property_possui_cnpj_" ;;
  }

  dimension: property_qualification {
    type: string
    sql: ${TABLE}."property_qualification" ;;
  }

  dimension: property_recent_deal_amount {
    type: number
    sql: ${TABLE}."property_recent_deal_amount" ;;
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

  dimension: property_relationship_status {
    type: string
    sql: ${TABLE}."property_relationship_status" ;;
  }

  dimension: property_salutation {
    type: string
    sql: ${TABLE}."property_salutation" ;;
  }

  dimension: property_school {
    type: string
    sql: ${TABLE}."property_school" ;;
  }

  dimension: property_seniority {
    type: string
    sql: ${TABLE}."property_seniority" ;;
  }

  dimension: property_start_date {
    type: string
    sql: ${TABLE}."property_start_date" ;;
  }

  dimension: property_state {
    type: string
    sql: ${TABLE}."property_state" ;;
  }

  dimension: property_total_revenue {
    type: number
    sql: ${TABLE}."property_total_revenue" ;;
  }

  dimension: property_twitterbio {
    type: string
    sql: ${TABLE}."property_twitterbio" ;;
  }

  dimension: property_twitterhandle {
    type: string
    sql: ${TABLE}."property_twitterhandle" ;;
  }

  dimension: property_twitterprofilephoto {
    type: string
    sql: ${TABLE}."property_twitterprofilephoto" ;;
  }

  dimension: property_utilizacao_em_sp_capital_ {
    type: string
    sql: ${TABLE}."property_utilizacao_em_sp_capital_" ;;
  }

  dimension: property_website {
    type: string
    sql: ${TABLE}."property_website" ;;
  }

  dimension: property_work_email {
    type: string
    sql: ${TABLE}."property_work_email" ;;
  }

  dimension: property_zip {
    type: string
    sql: ${TABLE}."property_zip" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, property_firstname, property_lastname, property_hs_email_last_email_name, property_ownername]
  }
}
