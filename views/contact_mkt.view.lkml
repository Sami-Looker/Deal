view: contact_mkt {
  sql_table_name: hubspotmarketing.contact ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: property_cpf {
    hidden: yes
    type: string
    sql: ${TABLE}."property_cpf" ;;
  }

  dimension: property_status_do_agendamento_ativacao_clinica {
    hidden: no
    type: string
    sql: ${TABLE}."property_status_do_agendamento_ativacao_clinica" ;;
  }

  dimension: property_data_de_agendamento_ativacao_clinica {
    hidden: yes
    type: date
    sql: ${TABLE}."property_data_de_agendamento_ativacao_clinica" ;;
  }
}
