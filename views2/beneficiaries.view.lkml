view: beneficiaries {
  label: "Membros"
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
    hidden: yes
    label: "Data de Nascimento"
    type: date
    sql: to_date(${TABLE}."birthdate",'DDMMYYYY') ;;
  }

  dimension:Age {
    hidden: yes
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
    hidden: yes
    label: "CPF"
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: email {
    hidden: yes
    label: "e-mail"
    type: string
    sql: LOWER(${TABLE}."email") ;;
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
    hidden: yes
    label: "Genêro"
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: graceperiodtype {
    hidden: yes
    label: "Período de Carência"
    type: string
    sql: ${TABLE}."graceperiodtype" ;;
  }

  dimension: healthplan {
    hidden: yes
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
    hidden: yes
    label: "Parentesco"
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
    label: "Nome da mãe"
    hidden: yes
    type: string
    sql: ${TABLE}."mothersname" ;;
  }

  dimension: name {
    hidden: yes
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: phonenumber {
    hidden: yes
    type: string
    sql: Replace(${TABLE}."phonenumber",'+55','') ;;
  }

  dimension: planid {
    hidden: yes
    type: string
    # hidden: yes
    sql: ${TABLE}."planid" ;;
  }

  dimension: profile {
    hidden: yes
    type: string
    sql: ${TABLE}."profile" ;;
  }
}
