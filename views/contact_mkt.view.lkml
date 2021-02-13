view: contact_mkt {
  sql_table_name: hubspot_mkt_.contact ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
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

  dimension: property_apelido {
    type: string
    sql: ${TABLE}."property_apelido" ;;
  }

  dimension: property_associatedcompanyid {
    type: number
    value_format_name: id
    sql: ${TABLE}."property_associatedcompanyid" ;;
  }

  dimension: property_assuntos_de_interesse {
    type: string
    sql: ${TABLE}."property_assuntos_de_interesse" ;;
  }

  dimension: property_assuntos_de_interesse_outros {
    type: string
    sql: ${TABLE}."property_assuntos_de_interesse_outros" ;;
  }

  dimension: property_bairro {
    type: string
    sql: ${TABLE}."property_bairro" ;;
  }

  dimension: property_canal_de_preferencia {
    type: string
    sql: ${TABLE}."property_canal_de_preferencia" ;;
  }

  dimension: property_canal_de_preferencia_outros {
    type: string
    sql: ${TABLE}."property_canal_de_preferencia_outros" ;;
  }

  dimension: property_cep {
    type: number
    sql: ${TABLE}."property_cep" ;;
  }

  dimension: property_cidade {
    type: string
    sql: ${TABLE}."property_cidade" ;;
  }

  dimension: property_cidade_em_que_nasceu {
    type: string
    sql: ${TABLE}."property_cidade_em_que_nasceu" ;;
  }

  dimension: property_city {
    type: string
    sql: ${TABLE}."property_city" ;;
  }

  dimension: property_cnpj {
    type: number
    sql: ${TABLE}."property_cnpj" ;;
  }

  dimension: property_coisas_importantes_da_vida {
    type: string
    sql: ${TABLE}."property_coisas_importantes_da_vida" ;;
  }

  dimension: property_coisas_que_voce_mais_curte_fazer_1 {
    type: string
    sql: ${TABLE}."property_coisas_que_voce_mais_curte_fazer_1" ;;
  }

  dimension: property_coisas_que_voce_mais_curte_fazer_2 {
    type: string
    sql: ${TABLE}."property_coisas_que_voce_mais_curte_fazer_2" ;;
  }

  dimension: property_coisas_que_voce_mais_curte_fazer_3 {
    type: string
    sql: ${TABLE}."property_coisas_que_voce_mais_curte_fazer_3" ;;
  }

  dimension: property_como_se_informa {
    type: string
    sql: ${TABLE}."property_como_se_informa" ;;
  }

  dimension: property_como_se_informa_outros {
    type: string
    sql: ${TABLE}."property_como_se_informa_outros" ;;
  }

  dimension: property_company {
    type: string
    sql: ${TABLE}."property_company" ;;
  }

  dimension: property_company_size {
    type: string
    sql: ${TABLE}."property_company_size" ;;
  }

  dimension: property_complemento {
    type: string
    sql: ${TABLE}."property_complemento" ;;
  }

  dimension: property_country {
    type: string
    sql: ${TABLE}."property_country" ;;
  }

  dimension: property_cpf {
    type: string
    sql: ${TABLE}."property_cpf" ;;
  }

  dimension: property_cpf_membro {
    type: string
    sql: ${TABLE}."property_cpf_membro" ;;
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

  dimension: property_data_de_nascimento {
    type: string
    sql: ${TABLE}."property_data_de_nascimento" ;;
  }

  dimension: property_date_of_birth {
    type: string
    sql: ${TABLE}."property_date_of_birth" ;;
  }

  dimension: property_degree {
    type: string
    sql: ${TABLE}."property_degree" ;;
  }

  dimension: property_descricao {
    type: string
    sql: ${TABLE}."property_descricao" ;;
  }

  dimension: property_e_mail_sami {
    type: string
    sql: ${TABLE}."property_e_mail_sami" ;;
  }

  dimension: property_email {
    type: string
    sql: ${TABLE}."property_email" ;;
  }

  dimension: property_endereco {
    type: string
    sql: ${TABLE}."property_endereco" ;;
  }

  dimension_group: property_engagements_last_meeting_booked {
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
    sql: ${TABLE}."property_engagements_last_meeting_booked" ;;
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

  dimension: property_estado {
    type: string
    sql: ${TABLE}."property_estado" ;;
  }

  dimension: property_fax {
    type: string
    sql: ${TABLE}."property_fax" ;;
  }

  dimension: property_field_of_study {
    type: string
    sql: ${TABLE}."property_field_of_study" ;;
  }

  dimension: property_firstname {
    type: string
    sql: ${TABLE}."property_firstname" ;;
  }

  dimension: property_gender {
    type: string
    sql: ${TABLE}."property_gender" ;;
  }

  dimension: property_genero {
    type: string
    sql: ${TABLE}."property_genero" ;;
  }

  dimension: property_genero_outros {
    type: string
    sql: ${TABLE}."property_genero_outros" ;;
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

  dimension_group: property_hs_content_membership_registered {
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
    sql: ${TABLE}."property_hs_content_membership_registered_at" ;;
  }

  dimension: property_hs_content_membership_registration_domain_sent_to {
    type: string
    sql: ${TABLE}."property_hs_content_membership_registration_domain_sent_to" ;;
  }

  dimension_group: property_hs_content_membership_registration_email_sent {
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
    sql: ${TABLE}."property_hs_content_membership_registration_email_sent_at" ;;
  }

  dimension: property_hs_content_membership_status {
    type: string
    sql: ${TABLE}."property_hs_content_membership_status" ;;
  }

  dimension: property_hs_conversations_visitor_email {
    type: string
    sql: ${TABLE}."property_hs_conversations_visitor_email" ;;
  }

  dimension: property_hs_count_is_unworked {
    type: number
    sql: ${TABLE}."property_hs_count_is_unworked" ;;
  }

  dimension: property_hs_count_is_worked {
    type: number
    sql: ${TABLE}."property_hs_count_is_worked" ;;
  }

  dimension: property_hs_created_by_conversations {
    type: yesno
    sql: ${TABLE}."property_hs_created_by_conversations" ;;
  }

  dimension: property_hs_email_bad_address {
    type: yesno
    sql: ${TABLE}."property_hs_email_bad_address" ;;
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

  dimension: property_hs_email_optout_10247532 {
    type: string
    sql: ${TABLE}."property_hs_email_optout_10247532" ;;
  }

  dimension: property_hs_email_optout_10253157 {
    type: string
    sql: ${TABLE}."property_hs_email_optout_10253157" ;;
  }

  dimension: property_hs_email_optout_10433825 {
    type: string
    sql: ${TABLE}."property_hs_email_optout_10433825" ;;
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

  dimension_group: property_hs_latest_meeting_activity {
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
    sql: ${TABLE}."property_hs_latest_meeting_activity" ;;
  }

  dimension: property_hs_lead_status {
    type: string
    sql: ${TABLE}."property_hs_lead_status" ;;
  }

  dimension: property_hs_legal_basis {
    type: string
    sql: ${TABLE}."property_hs_legal_basis" ;;
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

  dimension_group: property_hs_sales_email_last_clicked {
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
    sql: ${TABLE}."property_hs_sales_email_last_clicked" ;;
  }

  dimension_group: property_hs_sales_email_last_opened {
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
    sql: ${TABLE}."property_hs_sales_email_last_opened" ;;
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

  dimension: property_hs_testpurge {
    type: string
    sql: ${TABLE}."property_hs_testpurge" ;;
  }

  dimension: property_hs_testrollback {
    type: string
    sql: ${TABLE}."property_hs_testrollback" ;;
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

  dimension: property_linha_do_tempo_no_app {
    type: string
    sql: ${TABLE}."property_linha_do_tempo_no_app" ;;
  }

  dimension: property_linkedinbio {
    type: string
    sql: ${TABLE}."property_linkedinbio" ;;
  }

  dimension: property_marcas_admiradas {
    type: string
    sql: ${TABLE}."property_marcas_admiradas" ;;
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

  dimension: property_motivo_do_ticket {
    type: string
    sql: ${TABLE}."property_motivo_do_ticket" ;;
  }

  dimension: property_nome_membro {
    type: string
    sql: ${TABLE}."property_nome_membro" ;;
  }

  dimension: property_nos_explique_o_que_aconteceu_ {
    type: string
    sql: ${TABLE}."property_nos_explique_o_que_aconteceu_" ;;
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

  dimension_group: property_notes_next_activity {
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
    sql: ${TABLE}."property_notes_next_activity_date" ;;
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

  dimension: property_numero {
    type: number
    sql: ${TABLE}."property_numero" ;;
  }

  dimension: property_o_que_espera_do_plano_de_saude {
    type: string
    sql: ${TABLE}."property_o_que_espera_do_plano_de_saude" ;;
  }

  dimension: property_objetivo_de_saude {
    type: string
    sql: ${TABLE}."property_objetivo_de_saude" ;;
  }

  dimension: property_objetivos_de_vida {
    type: string
    sql: ${TABLE}."property_objetivos_de_vida" ;;
  }

  dimension: property_objetivos_de_vida_outro {
    type: string
    sql: ${TABLE}."property_objetivos_de_vida_outro" ;;
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

  dimension: property_profissao {
    type: string
    sql: ${TABLE}."property_profissao" ;;
  }

  dimension: property_redes_sociais_que_mais_acessa {
    type: string
    sql: ${TABLE}."property_redes_sociais_que_mais_acessa" ;;
  }

  dimension: property_redes_sociais_que_mais_acessa_outros {
    type: string
    sql: ${TABLE}."property_redes_sociais_que_mais_acessa_outros" ;;
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

  dimension: property_status_do_contrato {
    type: string
    sql: ${TABLE}."property_status_do_contrato" ;;
  }

  dimension: property_status_do_formulario {
    type: string
    sql: ${TABLE}."property_status_do_formulario" ;;
  }

  dimension: property_status_do_kit {
    type: string
    sql: ${TABLE}."property_status_do_kit" ;;
  }

  dimension: property_tem_filhos_ {
    type: string
    sql: ${TABLE}."property_tem_filhos_" ;;
  }

  dimension: property_tem_filhos_idades_e_qtd {
    type: string
    sql: ${TABLE}."property_tem_filhos_idades_e_qtd" ;;
  }

  dimension: property_teste_imprensa {
    type: string
    sql: ${TABLE}."property_teste_imprensa" ;;
  }

  dimension: property_tipo_do_contato {
    type: string
    sql: ${TABLE}."property_tipo_do_contato" ;;
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

  dimension: property_valores {
    type: string
    sql: ${TABLE}."property_valores" ;;
  }

  dimension: property_valores_outros {
    type: string
    sql: ${TABLE}."property_valores_outros" ;;
  }

  dimension: property_voce_tem_pets_ {
    type: string
    sql: ${TABLE}."property_voce_tem_pets_" ;;
  }

  dimension: property_voce_tem_pets_outros {
    type: string
    sql: ${TABLE}."property_voce_tem_pets_outros" ;;
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
