view: mv_audience_overview {
  label: "Site Sami"
  sql_table_name: google_analytics_mainview.mv_audience_overview ;;

  dimension: avg_session_duration {
    hidden: yes
    type: number
    sql: ${TABLE}."avg_session_duration" ;;
  }

  dimension: bounce_rate {
    hidden: yes
    type: number
    sql: ${TABLE}."bounce_rate" ;;
  }

  dimension: date {
    primary_key: yes
    hidden: yes
    type: date
    sql: ${TABLE}."date" ;;
  }

  dimension_group: create_date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: new_users {
    type: number
    sql: ${TABLE}."new_users" ;;
  }

  dimension: pageviews {
    hidden: yes
    type: number
    sql: ${TABLE}."pageviews" ;;
  }

  dimension: pageviews_per_session {
    hidden: yes
    type: number
    sql: ${TABLE}."pageviews_per_session" ;;
  }

  dimension: profile {
    hidden: yes
    type: string
    sql: ${TABLE}."profile" ;;
  }

  dimension: sessions {
    hidden: yes
    type: number
    sql: ${TABLE}."sessions" ;;
  }

  dimension: sessions_per_user {
    hidden: yes
    type: number
    sql: ${TABLE}."sessions_per_user" ;;
  }

  dimension: users {
    hidden: yes
    type: number
    sql: ${TABLE}."users" ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }
}
