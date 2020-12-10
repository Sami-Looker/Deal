view: chats {
  sql_table_name: careteam.chats ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: attachment {
    type: string
    sql: ${TABLE}."attachment" ;;
  }

  dimension: attachment_name {
    type: string
    sql: ${TABLE}."attachmentName" ;;
  }

  dimension: attachment_type {
    type: string
    sql: ${TABLE}."attachmentType" ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}."channelId" ;;
  }

  dimension: chat_members {
    type: string
    sql: ${TABLE}."chatMembers" ;;
  }

  dimension: chat_type {
    type: string
    sql: ${TABLE}."chatType" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."createdAt" ;;
  }

  dimension: from {
    type: number
    sql: ${TABLE}."from" ;;
  }

  dimension: importance {
    type: string
    sql: ${TABLE}."importance" ;;
  }

  dimension: is_patient {
    type: number
    sql: ${TABLE}."isPatient" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."message" ;;
  }

  dimension: patient_attendance_id {
    type: number
    sql: ${TABLE}."patientAttendanceId" ;;
  }

  dimension: to {
    type: number
    sql: ${TABLE}."to" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updatedAt" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, attachment_name]
  }
}
