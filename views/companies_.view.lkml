view: companies {
  sql_table_name: hiring.companies ;;
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

  dimension: address_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."address_fk" ;;
  }

  dimension: address_info_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."addressInfo_fk" ;;
  }

  dimension: alias {
    hidden: yes
    type: string
    sql: ${TABLE}."alias" ;;
  }

  dimension: archived {
    hidden: yes
    type: yesno
    sql: ${TABLE}."archived" ;;
  }

  dimension: capital {
    hidden: yes
    type: number
    sql: ${TABLE}."capital" ;;
  }

  dimension: cnpj {
    hidden: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: commercialproposalapproved {
    hidden: yes
    type: yesno
    sql: ${TABLE}."commercialproposalapproved" ;;
  }

  dimension: confirmeddocuments {
    hidden: yes
    type: yesno
    sql: ${TABLE}."confirmeddocuments" ;;
  }

  dimension: confirmeddocumentsat {
    hidden: yes
    type: string
    sql: ${TABLE}."confirmeddocumentsat" ;;
  }

  dimension: confirmeddocumentsby {
    hidden: yes
    type: string
    sql: ${TABLE}."confirmeddocumentsby" ;;
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

  dimension: email {
    hidden: yes
    label: "e-mail"
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: federal_entity {
    hidden: yes
    type: string
    sql: ${TABLE}."federal_entity" ;;
  }

  dimension: files_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."files_fk" ;;
  }

  dimension: founded {
    hidden: yes
    type: string
    sql: ${TABLE}."founded" ;;
  }

  dimension: hirerid {
    hidden: yes
    type: string
    sql: ${TABLE}."hirerid" ;;
  }

  dimension: isactive {
    hidden: yes
    type: yesno
    sql: ${TABLE}."isactive" ;;
  }

  dimension: last_update {
    hidden: yes
    type: string
    sql: ${TABLE}."last_update" ;;
  }

  dimension: legal_nature_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."legal_nature_fk" ;;
  }

  dimension: legal_nature_description {
    hidden: yes
    type: string
    sql: ${TABLE}."legal_nature_description" ;;
  }

  dimension: maps_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."maps_fk" ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: phone {
    hidden: yes
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: phone_alt {
    hidden: yes
    type: string
    sql: ${TABLE}."phone_alt" ;;
  }

  dimension: primary_activity_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."primary_activity_fk" ;;
  }

  dimension: primary_activity_description {
    hidden: yes
  label: "Atividade Primaria"
    type: string
    sql: ${TABLE}."primary_activity_description" ;;
  }


  dimension: registration_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."registration_fk" ;;
  }

  dimension: simples_nacional_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."simples_nacional_fk" ;;
  }

  dimension: sintegra_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."sintegra_fk" ;;
  }

  dimension: size {
    hidden: yes
    type: string
    sql: ${TABLE}."size" ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}."type" ;;
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
}
