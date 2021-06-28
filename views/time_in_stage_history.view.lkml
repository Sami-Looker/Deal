view: time_in_stage_history {
  label: "Deal History"
  derived_table: {
    indexes: ["deal_id"]
    sql:
      SELECT
          ds.deal_id
        , dps.label AS deal_stage
        , ds.date_entered
        , LEAD(ds.date_entered) OVER (PARTITION BY ds.deal_id ORDER BY ds.date_entered) AS exit_timestamp
        , ROW_NUMBER() OVER (PARTITION BY ds.deal_id ORDER BY ds.date_entered) AS deal_stage_sequence
      FROM _growthhubspot.deal_stage ds
      LEFT JOIN _growthhubspot.deal_pipeline_stage dps ON (ds.value = dps.stage_id)
      ORDER BY ds.deal_id
    ;;
    persist_for: "2 hours"
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
    type: string
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_stage {
    label: "Deal Stage"
    hidden: yes
    type: string
    sql: ${TABLE}.deal_stage ;;
  }

  dimension: deal_stage_sequence {
    hidden: yes
    type: number
    sql: ${TABLE}.deal_stage_sequence ;;
  }

  dimension_group: enter_timestamp {
    hidden: yes
    type: time
    sql: ${TABLE}.date_entered ;;
    timeframes: [raw,date,week,month,year]
  }

  dimension_group: exit_timestamp {
    hidden: yes
    type: time
    sql: ${TABLE}.exit_timestamp ;;
    timeframes: [raw,date,week,month,year]
  }

  dimension: has_exited_deal_stage {
    hidden: yes
    type: yesno
    sql: ${exit_timestamp_raw} IS NOT NULL ;;
  }

  dimension_group: in_deal_stage {
    hidden: yes
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

  dimension: days_in_deal_stage_tier {
    hidden: yes
    type: number
    sql: ${days_in_deal_stage} ;;
    tiers: [1,2,3,4,5,6,7,8,9,10]
    style: integer
  }

  measure: average_days_in_deal_stage {
    hidden: yes
    group_label: "Duration KPIs"
    type: average
    sql: ${days_in_deal_stage} ;;
    html: {{ rendered_value }} <span>days</span> ;;
    value_format_name: decimal_1
  }

  measure:sum_days_in_deal_stage {
    hidden: yes
    group_label: "Duration KPIs"
    type: sum
    sql: ${days_in_deal_stage} ;;
    html: {{ rendered_value }} <span>days</span> ;;
    value_format_name: decimal_1
  }

  measure: median_days_in_deal_stage {
    hidden: yes
    group_label: "Duration KPIs"
    type: median
    sql: ${days_in_deal_stage} ;;
    html: {{ rendered_value }} <span>days</span> ;;
    value_format_name: id
  }

  measure: count_total {
    hidden: yes
    alias: [count]
    type: count
    drill_fields: [deal_id]
  }

  measure: count_total_deals {
    hidden: yes
    alias: [count_distinct]
    type: count_distinct
    sql: ${deal_id};;
    drill_fields: [deal_id]
  }

}
