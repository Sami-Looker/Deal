view: symptoms {
  derived_table: {
    indexes: ["cpf"]
    sql:
select cpf
, unnest(string_to_array(presented_some_symptoms,',')) as presented_some_symptoms
FROM ${hra.SQL_TABLE_NAME}
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
    sql: ${TABLE}.presented_some_symptoms ;;
  }
}
