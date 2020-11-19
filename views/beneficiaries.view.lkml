view: beneficiaries {
  sql_table_name: hiring.beneficiaries ;;
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

  dimension: birthdate {
    label: "Data de Nascimento"
    type: date
    sql: to_date(${TABLE}."birthdate",'DDMMYYYY') ;;
  }

  dimension:Age {
    label: "Idade"
    type: number
    sql: extract (year from age (current_date,${birthdate})) ;;
  }

  dimension: cns {
    hidden: yes
    type: string
    sql: ${TABLE}."cns" ;;
  }

  dimension: companyid {
    hidden: yes
    type: string
    sql: ${TABLE}."companyid" ;;
  }

  dimension: cpf {
    label: "CPF"
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: email {
    label: "e-mail"
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: employeespecification {
    hidden: yes
    type: string
    sql: ${TABLE}."employeespecification" ;;
  }

  dimension: filledhealthdeclaration {
    hidden: yes
    type: yesno
    sql: ${TABLE}."filledhealthdeclaration" ;;
  }

  dimension: gender {
    label: "Genêro"
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: graceperiodtype {
    label: "Paríodo de Carência"
    type: string
    sql: ${TABLE}."graceperiodtype" ;;
  }

  dimension: healthplan {
    label: "Plano de Saúde Atual"
    type: string
    sql: ${TABLE}."healthplan" ;;
  }

  dimension: isactive {
    hidden: yes
    type: yesno
    sql: ${TABLE}."isactive" ;;
  }

  dimension: isadopted {
    hidden: yes
    type: yesno
    sql: ${TABLE}."isadopted" ;;
  }

  dimension: ishealthdeclarationsent {
    hidden: yes
    type: yesno
    sql: ${TABLE}."ishealthdeclarationsent" ;;
  }

  dimension: kinship {
    label: "Patentesco"
    type: string
    sql: ${TABLE}."kinship" ;;
  }

  dimension: memberid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}."memberid" ;;
  }

  dimension: mothersname {
    hidden: yes
    type: string
    sql: ${TABLE}."mothersname" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: phonenumber {
    type: string
    sql: ${TABLE}."phonenumber" ;;
  }

  dimension: planid {
    hidden: yes
    type: string
    # hidden: yes
    sql: ${TABLE}."planid" ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}."profile" ;;
  }

  dimension: responsibleid {
    hidden: yes
    type: string
    sql: ${TABLE}."responsibleid" ;;
  }

  dimension: validationdocument {
    hidden: yes
    type: string
    sql: ${TABLE}."validationdocument" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, mothersname, plans.id, plans.name]
  }
}
