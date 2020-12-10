view: patients {
  sql_table_name: careteam.patients ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: active_browser_id {
    type: number
    sql: ${TABLE}."activeBrowserId" ;;
  }

  dimension: address_location {
    type: string
    sql: ${TABLE}."addressLocation" ;;
  }

  dimension: blood_type {
    type: string
    sql: ${TABLE}."bloodType" ;;
  }

  dimension: browser_id {
    type: number
    sql: ${TABLE}."browserId" ;;
  }

  dimension: care_team_id {
    type: number
    sql: ${TABLE}."careTeamId" ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}."cpf" ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}."deletedAt" ;;
  }

  dimension: diastolic_pressure {
    type: number
    sql: ${TABLE}."diastolicPressure" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."fullName" ;;
  }

  dimension: program_tnh {
    type: number
    sql: ${TABLE}."programTNH" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: systolic_pressure {
    type: number
    sql: ${TABLE}."systolicPressure" ;;
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
    drill_fields: [id, full_name]
  }
}
