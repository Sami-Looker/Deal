view: symptoms_count {
  derived_table: {
    indexes: ["cpf"]
    sql:
      select cpf, presented_some_symptoms, count(1) from (
      select
        cpf,
        presented_some_symptoms,
        regexp_split_to_table(presented_some_symptoms, ',')
      from ${hra.SQL_TABLE_NAME}
    ) hra
    group by 1 , 2
     ;;
    persist_for: "1 hours"
  }

  dimension: cpf {
    hidden: yes
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: presented_some_symptoms {
    hidden: yes
    type: string
    sql: ${TABLE}.presented_some_symptoms ;;
  }

  dimension: count {
    hidden: yes
    type: number
    sql: ${TABLE}.count ;;
  }

}
