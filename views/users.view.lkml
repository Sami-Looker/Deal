view: users {
  sql_table_name: app.users ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
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
    hidden: yes
    type: string
    sql: ${TABLE}."accomodation" ;;
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
    hidden: yes
    type: string
    sql: ${TABLE}."beneficiaryid" ;;
  }

  dimension: birthdate {
    hidden: yes
    type: string
    sql: ${TABLE}."birthdate" ;;
  }

  dimension: bloodtype {
    hidden: yes
    type: string
    sql: ${TABLE}."bloodtype" ;;
  }

  dimension: bmi {
    hidden: yes
    type: number
    sql: ${TABLE}."bmi" ;;
  }

  dimension: careteamid {
    hidden: yes
    type: string
    sql: ${TABLE}."careteamid" ;;
  }

  dimension: cellphone {
    hidden: yes
    type: string
    sql: ${TABLE}."cellphone" ;;
  }

  dimension: city {
    hidden: yes
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: cns {
    hidden: yes
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
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: createdat {
    hidden: yes
    type: date
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
    hidden: yes
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: firstname {
    hidden: yes
    type: string
    sql: ${TABLE}."firstname" ;;
  }

  dimension: gender {
    hidden: yes
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

  dimension: lastname {
    hidden: yes
    type: string
    sql: ${TABLE}."lastname" ;;
  }

  dimension: nickname {
    hidden: yes
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
    hidden: yes
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
    hidden: yes
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

  measure: count {
    hidden: yes
    type: count
    drill_fields: [id, nickname, firstname, lastname]
  }
}
