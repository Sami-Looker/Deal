view: grace_period {
  derived_table: {
    indexes: ["id"]
    sql:
    SELECT
   unnest(array[id,id,id,id,id,id,id,id]) AS "id",
   unnest(array['grace_period_ambulatory_procedures', 'grace_period_appointment', 'grace_period_childbirth','grace_period_exam','grace_period_exam_special','grace_period_hospitalization','grace_period_pre_existing_diseases','grace_period_therapy']) AS "grace",
   unnest(array[grace_period_ambulatory_procedures, grace_period_appointment,grace_period_childbirth,grace_period_exam,grace_period_exam_special,grace_period_hospitalization,grace_period_pre_existing_diseases,grace_period_therapy]) AS "days"
FROM datawarehouse.grace_types
ORDER BY "grace"
        ;;
    persist_for: "6 hours"
  }

  dimension: id{
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."id" ;;
  }

  dimension: grace{
    type: string
    hidden: yes
    sql: ${TABLE}."grace" ;;
  }

  dimension: days{
    type: number
    hidden: yes
    sql: ${TABLE}."days" ;;
  }
}
