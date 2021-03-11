view: contracts {
  sql_table_name: datawarehouse.contracts ;;
  drill_fields: [company_contractor_company_id]

  dimension: company_contractor_company_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."company_contractor_company_id" ;;
  }

  dimension: cost {
    hidden: yes
    type: number
    sql: ${TABLE}."cost" ;;
  }

  dimension: next_payment {
    hidden: yes
    type:date
    sql: ${TABLE}."next_payment_at" ;;
  }

  dimension: payment {
    hidden: yes
    type:date
    sql: ${TABLE}."payment_at" ;;
  }

  dimension: start {
    hidden: yes
    type:date
    sql: ${TABLE}."start_at" ;;
  }

  dimension: payment_method_concept_id {
    hidden: yes
    type:number
    sql: ${TABLE}."payment_method_concept_id" ;;
  }
}
