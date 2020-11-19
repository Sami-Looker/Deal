include: "/base_views/deal_base.view"

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
    persist_for: "1 hour"
  }

  dimension: deal_id {
    hidden: no
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
