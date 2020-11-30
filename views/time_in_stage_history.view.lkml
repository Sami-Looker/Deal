include: "/base_views/deal_base.view"

view: time_in_stage_history {
  label: "Deal History"
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
    persist_for: "1 hour"
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
    label: "Deal Stage History"
    hidden: no
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

  dimension: days_in_deal_stage_tier {
    type: number
    sql: ${days_in_deal_stage} ;;
    tiers: [1,2,3,4,5,6,7,8,9,10]
    style: integer
  }

  measure: average_days_in_deal_stage {
    group_label: "Duration KPIs"
    type: average
    sql: ${days_in_deal_stage} ;;
    html: {{ rendered_value }} <span>days</span> ;;
    value_format_name: decimal_1
  }

  measure: median_days_in_deal_stage {
    group_label: "Duration KPIs"
    type: median
    sql: ${days_in_deal_stage} ;;
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

  measure: count_sql {
    label: "(1) Count SQL"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "SQL"]
  }

  measure: count_cotacao {
    label: "(2) Count Cotação"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "Cotação"]
  }

  measure: count_contratacao {
    label: "(3) Contratação - Contratação Iniciada"
    group_label: "Funnel Counts"
    type: count
    filters: [macro_status: "Contratação - Contratação Iniciada"]
  }

  measure: percentage_cotacao_sql {
    label: "%Cotação/SQL"
    group_label: "Funnel Percents"
    type: number
    sql: 1.0 * ${count_cotacao} / NULLIF(${count_total},0) ;;
    value_format_name: percent_2
  }

}
