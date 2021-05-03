view: users {
  label: "Membros"
  sql_table_name: app.users ;;
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

  dimension: accomodation {
    label: "Acomodação"
    type: string
    sql: ${TABLE}."accomodation" ;;
  }

  dimension: complete_address {
    label: "Endereço"
    type: string
    sql: Concat(${address},', ', ${addressnumber},' - ',${complement},' - ',${district},' - ',${city}, ' - CEP ',${zipcode}) ;;
  }

  dimension: address {
    hidden: yes
    type: string
    sql: ${TABLE}."address" ;;
  }

  dimension: addressnumber {
    hidden: yes
    type: number
    sql: ${TABLE}."addressnumber" ;;
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

  dimension: bloodtype {
    hidden: yes
    label: "Tipo Sanguíneo"
    type: string
    sql: ${TABLE}."bloodtype" ;;
  }

  dimension: bmi {
    hidden: yes
    type: number
    sql: ${TABLE}."bmi" ;;
  }

  dimension: careteamid {
    label: "ID Time de Saúde"
    type: string
    sql: ${TABLE}."careteamid" ;;
  }

  dimension: cellphone {
    label: "Celular"
    type: string
    sql: ${TABLE}."cellphone" ;;
  }

  dimension: city {
    hidden: yes
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: cns {
    type: string
    sql: ${TABLE}."cns" ;;
  }

  dimension: cognitorefreshtoken {
    hidden: yes
    type: string
    sql: ${TABLE}."cognitorefreshtoken" ;;
  }

  dimension: complement {
    hidden: yes
    type: string
    sql: ${TABLE}."complement" ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}."cpf" ;;
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

  dimension: dependents {
    hidden: yes
    type: number
    sql: ${TABLE}."dependents" ;;
  }

  dimension: diastolicpressure {
    hidden: yes
    type: number
    sql: ${TABLE}."diastolicpressure" ;;
  }

  dimension: district {
    hidden: yes
    type: string
    sql: ${TABLE}."district" ;;
  }

  dimension: dwpatientid {
    hidden: yes
    type: string
    sql: ${TABLE}."dwpatientid" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
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

  dimension: healthplan {
    hidden: yes
    type: string
    sql: ${TABLE}."healthplan" ;;
  }

  dimension: height {
    hidden: yes
    type: number
    sql: ${TABLE}."height" ;;
  }

  dimension: hirerid {
    hidden: yes
    type: string
    sql: ${TABLE}."hirerid" ;;
  }

  dimension: hiringdocuments3key {
    hidden: yes
    type: string
    sql: ${TABLE}."hiringdocuments3key" ;;
  }

  dimension: holderuser {
    hidden: yes
    type: string
    sql: ${TABLE}."holderuser" ;;
  }

  dimension: nickname {
    label: "Apelido"
    type: string
    sql: ${TABLE}."nickname" ;;
  }

  dimension: oncecompletedhra {
    hidden: yes
    type: yesno
    sql: ${TABLE}."oncecompletedhra" ;;
  }

  dimension: onesignalid {
    hidden: yes
    type: string
    sql: ${TABLE}."onesignalid" ;;
  }

  dimension: passworddigest {
    hidden: yes
    type: string
    sql: ${TABLE}."passworddigest" ;;
  }

  dimension: phone {
    label: "Telefone"
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: picture {
    hidden: yes
    type: string
    sql: ${TABLE}."picture" ;;
  }

  dimension: profilepictureurl {
    hidden: yes
    type: string
    sql: ${TABLE}."profilepictureurl" ;;
  }

  dimension: regulatedplan {
    label: "Plano"
    type: string
    sql: ${TABLE}."regulatedplan" ;;
  }

  dimension: rg {
    hidden: yes
    type: string
    sql: ${TABLE}."rg" ;;
  }

  dimension: state {
    hidden: yes
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: systolicpressure {
    hidden: yes
    type: number
    sql: ${TABLE}."systolicpressure" ;;
  }

  dimension: titular {
    hidden: yes
    type: number
    sql: ${TABLE}."titular" ;;
  }

  dimension: token_fk {
    hidden: yes
    type: number
    sql: ${TABLE}."token_fk" ;;
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

  dimension: uploadedavalidselfie {
    hidden: yes
    type: yesno
    sql: ${TABLE}."uploadedavalidselfie" ;;
  }

  dimension: weight {
    hidden: yes
    type: number
    sql: ${TABLE}."weight" ;;
  }

  dimension: zipcode {
    hidden: yes
    type: zipcode
    sql: ${TABLE}."zipcode" ;;
  }

  dimension: kinship {
    label: "Parentesco"
    type: string
    sql: ${beneficiaries.kinship} ;;
  }
  dimension: profile {
    label: "Perfil"
    type: string
    sql: ${beneficiaries.profile} ;;
  }

  dimension: name {
    label: "Empresa Contratante"
    hidden: no
    type: string
    sql: ${companies.name} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, nickname, firstname, lastname, hrauseranswers.count]
  }
}
