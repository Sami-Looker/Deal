include: "/base_views/deal_base.view"

view: time_in_deal_stage_history {
  extends: [deal_base]
  derived_table: {
    indexes: ["deal_id"]
    sql:
      SELECT
          dph.deal_id
        , dps.label AS deal_stage
        , dph.timestamp
        , LEAD(dph.timestamp) OVER (PARTITION BY dph.deal_id ORDER BY dph.timestamp) AS exit_timestamp
        , ROW_NUMBER() OVER (PARTITION BY dph.deal_id ORDER BY dph.timestamp) AS deal_stage_sequence
      FROM hubspot.deal_property_history dph
      LEFT JOIN hubspot.deal_pipeline_stage dps ON (dph.value = dps.stage_id)
      WHERE dph.name = 'deal_pipeline_stage_id'
      ORDER BY dph.deal_id
    ;;
    persist_for: "24 hours"
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
    hidden: no
    type: number
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_stage {
    type: string
    sql: ${TABLE}.deal_stage ;;
  }

  dimension: deal_stage_sequence {
    hidden: no
    type: number
    sql: ${TABLE}.deal_stage_sequence ;;
  }

  dimension_group: enter_timestamp {
    type: time
    sql: ${TABLE}.timestamp ;;
    timeframes: [raw,date,month,year]
  }

  dimension_group: exit_timestamp {
    type: time
    sql: ${TABLE}.exit_timestamp ;;
    timeframes: [raw,date,month,year]
  }

  dimension: has_exited_deal_stage {
    type: yesno
    sql: ${exit_timestamp_raw} IS NOT NULL ;;
  }

  dimension_group: in_deal_stage {
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

  dimension: minutes_in_deal_stage_tier {
    type: tier
    sql: ${minutes_in_deal_stage} ;;
    tiers: [100,200,300,400,500,600,700,800,900,1000]
    style: integer
  }

  measure: average_minutes_in_deal_stage {
    group_label: "Duration KPIs"
    type: average
    sql: ${minutes_in_deal_stage} ;;
    html: {{ rendered_value }} <span>minutes</span> ;;
    value_format_name: id
  }

  measure: median_minutes_in_deal_stage {
    group_label: "Duration KPIs"
    type: median
    sql: ${minutes_in_deal_stage} ;;
    html: {{ rendered_value }} <span>minutes</span> ;;
    value_format_name: id
  }

}

view: deal_stage_facts {
  derived_table: {
    indexes: ["deal_id"]
    sql:
      SELECT
          tish1.deal_id
        , (SELECT tish2.deal_stage FROM ${time_in_deal_stage_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.deal_stage_sequence = 1) AS deal_stage1
        , (SELECT tish2.deal_stage FROM ${time_in_deal_stage_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.deal_stage_sequence = 2) AS deal_stage2
        , (SELECT tish2.deal_stage FROM ${time_in_deal_stage_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.deal_stage_sequence = 3) AS deal_stage3
        , (SELECT tish2.deal_stage FROM ${time_in_deal_stage_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.deal_stage_sequence = 4) AS deal_stage4
        , (SELECT tish2.deal_stage FROM ${time_in_deal_stage_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.deal_stage_sequence = 5) AS deal_stage5
      FROM ${time_in_deal_stage_history.SQL_TABLE_NAME} tish1
    ;;
    persist_for: "24 hours"
  }

  dimension: deal_id {
    hidden: yes
    type: number
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_stage1 {
    sql: COALESCE(${TABLE}.deal_stage1,'n/a') ;;
  }
  dimension: deal_stage2 {
    sql: COALESCE(${TABLE}.deal_stage2,'n/a') ;;
  }
  dimension: deal_stage3 {
    sql: COALESCE(${TABLE}.deal_stage3,'n/a') ;;
  }
  dimension: deal_stage4 {
    sql: COALESCE(${TABLE}.deal_stage4,'n/a') ;;
  }
  dimension: deal_stage5 {
    sql: COALESCE(${TABLE}.deal_stage5,'n/a') ;;
  }

}
