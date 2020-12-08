include: "/base_views/deal_base.view"
view: macro_status_history {
  label: "Deal History"
  derived_table: {
    indexes: ["deal_id"]
    sql:
      SELECT
          dh.deal_id
        , dh.deal_macro_status
        , dh.timestamp
        , LEAD(dh.timestamp) OVER (PARTITION BY dh.deal_id ORDER BY dh.timestamp) AS exit_timestamp
        , ROW_NUMBER() OVER (PARTITION BY dh.deal_id ORDER BY dh.timestamp) AS deal_stage_sequence
      FROM hubspot.deal_history dh
      WHERE dh.deal_stage_sequence = 1
      ORDER BY dh.deal_id
    ;;
    persist_for: "30 minutes"
  }

  # S1->S2 T1
  # S2->S3 T2
  # S3->S2 T3
  # S2->S3 T4

  # Time in S3 = T2 + T4
  dimension: _primary_key { # derived primary key
    type: string
    primary_key: yes
    hidden: yes
    sql: ${deal_id} || '-' || ${deal_stage_sequence} ;;
  }

  dimension: deal_id {
    hidden: yes
    type: number
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_stage {
    label: "Macro Status"
    hidden: no
    type: string
    sql: ${TABLE}.deal_macro_status ;;
  }

  dimension: deal_stage_sequence {
    hidden: yes
    type: number
    sql: ${TABLE}.deal_stage_sequence ;;
  }

  dimension_group: enter_timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
    timeframes: [raw,date,week,month,year]
  }

  dimension_group: exit_timestamp {
    type: time
    sql: ${TABLE}.exit_timestamp ;;
    timeframes: [raw,date,week,month,year]
  }

  dimension: has_exited_deal_stage {
    hidden: yes
    type: yesno
    sql: ${exit_timestamp_raw} IS NOT NULL ;;
  }

  dimension_group: in_macro_status {
    type: duration
    sql_start: ${enter_timestamp_raw} ;;
    sql_end:
      CASE
        WHEN ${exit_timestamp_raw} IS NULL THEN CURRENT_TIMESTAMP
        ELSE ${exit_timestamp_raw}
      END
    ;;
    intervals: [minute,hour,day]
  }

  dimension: days_in_macro_status_tier {
    type: number
    sql: ${days_in_macro_status} ;;
    tiers: [1,2,3,4,5,6,7,8,9,10]
    style: integer
  }

  measure: average_days_in_macro_status {
    group_label: "Duration KPIs"
    type: average
    sql: ${days_in_macro_status} ;;
    html: {{ rendered_value }} <span>days</span> ;;
    value_format_name: decimal_1
  }

  measure: median_days_in_macro_status {
    group_label: "Duration KPIs"
    type: median
    sql: ${days_in_macro_status} ;;
    html: {{ rendered_value }} <span>days</span> ;;
    value_format_name: id
  }

  measure: count_total {
    alias: [count]
    type: count
    drill_fields: [deal_id]
  }

  measure: count_total_deals {
    alias: [count_distinct]
    type: count_distinct
    sql:${deal_id};;
    drill_fields: [deal_id]
  }
}
