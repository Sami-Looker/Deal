view: deal_stage_facts {
  label: "facts"
  derived_table: {
    indexes: ["deal_id"]
    sql:
      SELECT
          tish1.deal_id
        , (SELECT tish2.deal_macro_status FROM ${macro_status_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.macro_status_sequence = 1) AS deal_stage1
        , (SELECT tish2.deal_macro_status FROM ${macro_status_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.macro_status_sequence = 2) AS deal_stage2
        , (SELECT tish2.deal_macro_status FROM ${macro_status_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.macro_status_sequence = 3) AS deal_stage3
        , (SELECT tish2.deal_macro_status FROM ${macro_status_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.macro_status_sequence = 4) AS deal_stage4
        , (SELECT tish2.deal_macro_status FROM ${macro_status_history.SQL_TABLE_NAME} tish2 WHERE tish2.deal_id = tish1.deal_id AND tish2.macro_status_sequence = 5) AS deal_stage5
      FROM ${macro_status_history.SQL_TABLE_NAME} tish1
    ;;
    persist_for: "1 hours"
  }

  dimension: deal_id {
    hidden: yes
    type: number
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_stage1 {
    hidden: yes
    sql: COALESCE(${TABLE}.deal_stage1,'n/a') ;;
  }
  dimension: deal_stage2 {
    hidden: yes
    sql: COALESCE(${TABLE}.deal_stage2,'n/a') ;;
  }
  dimension: deal_stage3 {
    hidden: yes
    sql: COALESCE(${TABLE}.deal_stage3,'n/a') ;;
  }
  dimension: deal_stage4 {
    hidden: yes
    sql: COALESCE(${TABLE}.deal_stage4,'n/a') ;;
  }
  dimension: deal_stage5 {
    hidden: yes
    sql: COALESCE(${TABLE}.deal_stage5,'n/a') ;;
  }

}
