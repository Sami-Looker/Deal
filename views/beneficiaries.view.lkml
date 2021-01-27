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
    group_label: "Data de Nascimento"
    label: "Formato YYYY-MM-DD"
    type: date
    sql: to_date(${TABLE}."birthdate",'DDMMYYYY') ;;
  }

  dimension: birthdate2 {
    group_label: "Data de Nascimento"
    label: "Formato DD/MM/YYYY"
    type: date
    sql: to_date(${TABLE}."birthdate",'DDMMYYYY') ;;
    html: {{ rendered_value | date: "%d/%m/%Y" }};;
  }

  dimension: birthdate3 {
    group_label: "Data de Nascimento"
    label: "Formato MM/DD/YYYY"
    type: date
    sql: to_date(${TABLE}."birthdate",'DDMMYYYY') ;;
    html: {{ rendered_value | date: "%m/%d/%Y" }};;
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
    label: "Gênero"
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: name_plans {
    label: "Plano Escolhido"
    type: string
    sql: ${plans.name} ;;
  }

  dimension: graceperiodtype {
    label: "Período de Carência"
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
    label: "Parentesco"
    type: string
    sql: ${TABLE}."kinship" ;;
  }

  dimension: memberid {
    label: "N° Carteirinha"
    type: number
    value_format_name: id
    sql: ${TABLE}."memberid" ;;
  }

  dimension: mothersname {
    label: "Nome da mãe"
    hidden: no
    type: string
    sql: ${TABLE}."mothersname" ;;
  }

  dimension: name {
    group_label: "Nome"
    label: "Nome completo"
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: first_name{
    group_label: "Nome"
    label: "Primeiro Nome"
    type: string
    sql: split_part(${name},' ',1) ;;
  }

  dimension: last_name{
    group_label: "Nome"
    label: "Sobrenome"
    type: string
    sql: Concat(split_part(${name},' ',2),' ',split_part(${name},' ',3),' ',split_part(${name},' ',4),' ',split_part(${name},' ',5),' ',split_part(${name},' ',6),' ',split_part(${name},' ',7)) ;;
  }

  dimension: phonenumber {
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

  dimension: limite_time_de_saude_3 {
    hidden: yes
    type: date
    sql: ${data_de_contato_membro.createdat} + INTERVAL '3 days';;
  }

  dimension: limite_time_de_saude_sem_resposta {
    hidden: yes
    type: date
    sql: ${data_de_contato_membro.createdat} + INTERVAL '3 days';;
  }

  dimension: limite_time_de_saude_7 {
    hidden: yes
    type: date
    sql: ${data_de_contato_membro.createdat} + INTERVAL '3 days';;
  }

  dimension: flag_time_de_saude_sem_resposta {
    hidden: no
    type: string
    sql:
     CASE
           WHEN ((${limite_time_de_saude_sem_resposta} <= CURRENT_DATE) and ${limite_time_de_saude_sem_resposta} IS NOT NULL)
           AND
           (CASE
           WHEN ${TABLE}."cpf" = '15355954855' THEN '2020-11-24'
           ELSE ${data_de_resposta_membro.createdat}
         END) IS NULL THEN 'Sem Resposta por 3 dias ou mais'
         END;;
  }

  dimension: flag_escolha_time_de_saude {
    hidden: no
    type: string
    sql:
     CASE
           WHEN (((${guia_membro.created_at} + INTERVAL '7 days') <= CURRENT_DATE) and ${users.careteamid} IS NULL)
           THEN 'Sem Escolha por 7 dias ou mais'
         END;;
  }

  dimension: guia_membro {
    label: "Data de envio do Guia do Membro"
    hidden: no
    type: date
    sql: ${guia_membro.created_at};;
  }

  dimension: data_de_contato_membro {
    label: "Data 1º contato do Time de Saúde via Chat"
    hidden: no
    type: date
    sql: ${data_de_contato_membro.createdat};;
  }

  dimension: data_de_envio_para_o_gympass {
    hidden: yes
    sql: ${data_envio.data_de_envio_para_o_gympass};;
  }

  dimension: data_primeira_videoconferencia {
    label: "Data da 1º Videoconferencia"
    hidden: no
    type: date
    sql: ${data_primeira_videoconferencia.createdat};;
  }

  dimension: data_de_resposta_membro {
    label: "Data resposta ao chat do Time de Saúde"
    hidden: no
    type: date
    sql: CASE
           WHEN ${TABLE}."cpf" = '15355954855' THEN '2020-11-24'
           ELSE ${data_de_resposta_membro.createdat}
         END;;
  }

  dimension: address {
    label: "Beneficiaries Address"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${users.address} ;;
  }

  dimension: addressnumber {
    label: "Beneficiaries Number"
    group_label: "Location"
    hidden: no
    type: number
    sql: ${users.addressnumber} ;;
  }

  dimension: city {
    label: "Beneficiaries City"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${users.city} ;;
  }

  dimension: complement {
    label: "Beneficiaries Complement"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${users.complement} ;;
  }

  dimension: district {
    label: "Beneficiaries District"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${users.district} ;;
  }
  dimension: state {
    label: "Beneficiaries State"
    group_label: "Location"
    hidden: no
    type: string
    sql: ${users.state} ;;
  }
  dimension: zipcode {
    label: "Beneficiaries Zipcode"
    group_label: "Location"
    hidden: no
    type: zipcode
    sql: ${users.zipcode} ;;
  }

  dimension: complete_address {
    label: "Beneficiaries Complete Address"
    group_label: "Location"
    type: string
    sql: Concat(${users.address},', ', ${users.addressnumber},' - ',${users.complement},' - ',${users.district}, ' - CEP ',${users.zipcode}) ;;
  }

  dimension: createdat {
    label: "Data do cadastro no App do membro"
    hidden: no
    type: date
    sql: ${users.createdat} ;;
  }

  dimension: beneficiaryid {
    label: "N° Carteirinha"
    hidden: yes
    type: string
    sql: ${users.beneficiaryid} ;;
    link: {
      label: "Dashboard do Membro"
      url: "https://sami.cloud.looker.com/dashboards-next/25?N%C2%B0+Carteirinha={{value}}"
    }
  }

  dimension: careteamid {
    label: "Careteam ID"
    hidden: no
    type: string
    sql: ${users.careteamid} ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, mothersname, plans.id, plans.name]
  }
}
