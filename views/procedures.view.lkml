view: procedures {
  label: "Procedimentos Realizados"
  sql_table_name: datawarehouse.procedures ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cost {
    label: "Valor do Procedimento"
    type: number
    sql: ${TABLE}."cost" ;;
  }

  dimension: medical_cost {
    label: "Valor Pago"
    type: number
    sql: ${TABLE}."medical_cost" ;;
  }

  dimension: episode_id {
    hidden: yes
    type: number
    sql: ${TABLE}."episode_id" ;;
  }

  dimension: life_id {
    hidden: yes
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  dimension: name {
    label: "Procedimento"
    type: string
    sql: ${TABLE}."name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, episodes.parent_episode_id]
  }
}
