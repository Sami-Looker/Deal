include: "/base_views/deal_base.view"
view: macro_status_history {
  label: "Deal History"
  derived_table: {
    indexes: ["deal_id"]
    sql:
SELECT *
      , ROW_NUMBER() OVER (PARTITION BY xy.deal_id ORDER BY xy.date_entered) AS macro_status_sequence
      FROM(SELECT *
      , LEAD(xx.date_entered) OVER (PARTITION BY xx.deal_id ORDER BY xx.date_entered) AS exit_timestamp
       FROM(SELECT
          ds.deal_id
        , dps.macro_status AS deal_macro_status
        , ds.date_entered
        , ROW_NUMBER() OVER (PARTITION BY ds.deal_id || dps.macro_status ORDER BY ds.date_entered) AS deal_stage_sequence
      FROM hubspotgrowth.deal_stage ds
      LEFT JOIN hubspotgrowth.deal_pipeline_stage dps ON (ds.value = dps.stage_id)
      ORDER BY ds.deal_id, ds.date_entered) xx
      WHERE xx.deal_stage_sequence = 1)xy
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
    type: number
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_stage {
    label: "Macro Status History"
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
    sql: ${TABLE}.date_entered ;;
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

  measure: sum_days_in_macro_status {
    group_label: "Duration KPIs"
    type: sum
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
  }

  measure: count_total_deals {
    alias: [count_distinct]
    type: count_distinct
    sql:${deal_id};;
    drill_fields: [deal_id]
  }
}
