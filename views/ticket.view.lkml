view: ticket {
  sql_table_name: hubspot_mkt_t.ticket ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: object_type {
    type: string
    sql: ${TABLE}."object_type" ;;
  }

  dimension: property_content {
    type: string
    sql: ${TABLE}."property_content" ;;
  }

  dimension: property_created_by {
    type: number
    sql: ${TABLE}."property_created_by" ;;
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

  dimension_group: property_first_agent_reply {
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
    sql: ${TABLE}."property_first_agent_reply_date" ;;
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

  dimension: property_hs_conversations_originating_message_id {
    type: string
    sql: ${TABLE}."property_hs_conversations_originating_message_id" ;;
  }

  dimension: property_hs_conversations_originating_thread_id {
    type: number
    sql: ${TABLE}."property_hs_conversations_originating_thread_id" ;;
  }

  dimension: property_hs_created_by_user_id {
    type: number
    sql: ${TABLE}."property_hs_created_by_user_id" ;;
  }

  dimension: property_hs_last_email_activity {
    type: string
    sql: ${TABLE}."property_hs_last_email_activity" ;;
  }

  dimension_group: property_hs_last_email {
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
    sql: ${TABLE}."property_hs_last_email_date" ;;
  }

  dimension_group: property_hs_lastactivitydate {
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
    sql: ${TABLE}."property_hs_lastactivitydate" ;;
  }

  dimension_group: property_hs_lastcontacted {
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
    sql: ${TABLE}."property_hs_lastcontacted" ;;
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

  dimension_group: property_hs_nextactivitydate {
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
    sql: ${TABLE}."property_hs_nextactivitydate" ;;
  }

  dimension: property_hs_num_times_contacted {
    type: number
    sql: ${TABLE}."property_hs_num_times_contacted" ;;
  }

  dimension: property_hs_originating_email_engagement_id {
    type: number
    sql: ${TABLE}."property_hs_originating_email_engagement_id" ;;
  }

  dimension: property_hs_pipeline {
    type: number
    sql: ${TABLE}."property_hs_pipeline" ;;
  }

  dimension: property_hs_pipeline_stage {
    type: number
    sql: ${TABLE}."property_hs_pipeline_stage" ;;
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

  dimension_group: property_last_engagement {
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
    sql: ${TABLE}."property_last_engagement_date" ;;
  }

  dimension_group: property_last_reply {
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
    sql: ${TABLE}."property_last_reply_date" ;;
  }

  dimension: property_motivo {
    type: string
    sql: ${TABLE}."property_motivo" ;;
  }

  dimension: property_motivo_do_contato {
    type: string
    sql: ${TABLE}."property_motivo_do_contato" ;;
  }

  dimension: property_nip {
    type: number
    sql: ${TABLE}."property_nip" ;;
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

  dimension: property_protocolo_mv {
    type: number
    sql: ${TABLE}."property_protocolo_mv" ;;
  }

  dimension: property_satisfacao {
    type: string
    sql: ${TABLE}."property_satisfacao" ;;
  }

  dimension: property_source_type {
    type: string
    sql: ${TABLE}."property_source_type" ;;
  }

  dimension: property_sub_motivo {
    type: string
    sql: ${TABLE}."property_sub_motivo" ;;
  }

  dimension: property_subject {
    type: string
    sql: ${TABLE}."property_subject" ;;
  }

  dimension: property_time_to_close {
    type: number
    sql: ${TABLE}."property_time_to_close" ;;
  }

  dimension: property_time_to_first_agent_reply {
    type: number
    sql: ${TABLE}."property_time_to_first_agent_reply" ;;
  }

  dimension: property_welcome_call {
    type: string
    sql: ${TABLE}."property_welcome_call" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, ticket_contact.count]
  }
}
