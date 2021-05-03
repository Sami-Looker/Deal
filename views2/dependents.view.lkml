view: dependents {
  label: "Dependentes"
  sql_table_name: app.dependents ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: __v {
    hidden: yes
    type: number
    sql: ${TABLE}."__v" ;;
  }

  dimension: _id {
    hidden: yes
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: beneficiaryid {
    label: "N° da Carteirinha"
    type: string
    sql: ${TABLE}."beneficiaryid" ;;
  }

  dimension_group: birthdate {
    label: "Data de Nascimento"
    type: time
    timeframes: [
      date,
      month,
      year
    ]
    sql: ${TABLE}."birthdate" ;;
  }

  dimension:Age {
    label: "Idade"
    type: number
    sql: extract (year from age (current_date,${birthdate_date})) ;;
  }

  dimension_group: createdat {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."createdat" ;;
  }

  dimension: dwpatientid {
    hidden: yes
    type: string
    sql: ${TABLE}."dwpatientid" ;;
  }

  dimension: firstname {
    label: "Primeiro Nome"
    type: string
    sql: ${TABLE}."firstname" ;;
  }

  dimension: completename {
    label: "Nome Completo"
    type: string
    sql: Concat(${firstname},' ', ${lastname}) ;;
  }

  dimension: lastname {
    label: "Último Nome"
    type: string
    sql: ${TABLE}."lastname" ;;
  }

  dimension: gender {
    label: "Gênero"
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: holderuser {
    hidden: yes
    type: string
    sql: ${TABLE}."holderuser" ;;
  }

  dimension_group: updatedat {
    hidden: yes
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updatedat" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, lastname, firstname]
  }
}
