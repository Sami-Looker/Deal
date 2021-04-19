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

  dimension: start_at {
    hidden: no
    label: "Data de Vigência do Membro"
    type: date
    sql: ${beneficiaries_dw.start_at} ;;
  }

  dimension: _id {
    hidden: yes
    type: string
    sql: ${TABLE}."_id" ;;
  }

  dimension: classificacao {
    label: "Classificação do Membro"
    type: string
    sql: CAse
    WHEN ${companies.name} = 'SAMI ASSISTENCIA MEDICA LTDA' THEN 'Samer'
    ELSE 'Contratante'
      END ;;
  }


  dimension: birthdate {
    group_label: "Data de Nascimento"
    label: "Formato YYYY-MM-DD"
    type: date
    sql: ${lives.birth_at} ;;
  }

  dimension: birthdate2 {
    group_label: "Data de Nascimento"
    label: "Formato DD/MM/YYYY"
    type: date
    sql: ${lives.birth_at} ;;
    html: {{ rendered_value | date: "%d/%m/%Y" }};;
  }

  dimension: birthdate3 {
    group_label: "Data de Nascimento"
    label: "Formato MM/DD/YYYY"
    type: date
    sql: ${lives.birth_at} ;;
    html: {{ rendered_value | date: "%m/%d/%Y" }};;
  }

  dimension:Age {
    label: "Idade"
    type: number
    sql: extract (year from age (current_date,${birthdate})) ;;
  }

  dimension:faixa_etaria {
    label: "Faixa Etária ANS"
    type: string
    sql: CASE
    WHEN ${Age} between 0 and 18 then '0 à 18 anos'
    WHEN ${Age} between 19 and 23 then '19 à 23 anos'
    WHEN ${Age} between 24 and 28 then '24 à 28 anos'
    WHEN ${Age} between 29 and 33 then '29 à 33 anos'
    WHEN ${Age} between 34 and 38 then '34 à 38 anos'
    WHEN ${Age} between 39 and 43 then '39 à 43 anos'
    WHEN ${Age} between 44 and 48 then '44 à 48 anos'
    WHEN ${Age} between 49 and 53 then '49 à 53 anos'
    WHEN ${Age} between 54 and 58 then '54 à 58 anos'
    WHEN ${Age} between 59 and 150 then '59 ou + anos'
    end;;
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
    sql:CASE
          WHEN (LOWER(${life_contacts.email})) IS NULL THEN LOWER(${TABLE}."email")
          ELSE LOWER(${life_contacts.email})
          END;;
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
    sql: lower(${TABLE}."gender") ;;
  }

  dimension: name_plans {
    label: "Plano Escolhido"
    type: string
    sql: ${plans.name} ;;
  }

  dimension: graceperiodtype {
    group_label: "Períodos de Carência"
    label: "Grupo de Carência"
    type: string
    sql: ${grace_types.name};;
  }

  dimension: healthplan {
    label: "Plano de Saúde Atual"
    type: string
    sql:
     CASE
    WHEN ${TABLE}."healthplan" = '' OR ${TABLE}."healthplan" IS NULL THEN 'Não Possuía'
    ELSE ${TABLE}."healthplan"
    END ;;
  }

  dimension: planosaude {
    label: "Possuía Plano de Saúde?"
    type: string
    sql: CASE
    WHEN ${TABLE}."healthplan" = '' OR ${TABLE}."healthplan" IS NULL THEN 'Não'
    ELSE 'Sim'
    END
    ;;
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
    type: string
    sql: ${TABLE}."memberid" ;;
    link: {
      label: "Dashboard do Membro"
      url: "https://sami.cloud.looker.com/dashboards-next/25?N%C2%B0+Carteirinha={{value}}"
    }
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
    sql: ${lives.name} ;;
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
    label: "Celular"
    type: string
    sql: Replace(${TABLE}."phonenumber",'+55','') ;;
  }

  dimension: planid {
    label: "ID Plano Escolhido"
    type: string
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

  dimension: video_tds {
    label: "Data de envio Alerta Videochamada"
    hidden: no
    type: date
    sql: ${video_tds.created_at};;
  }

  dimension: download_app {
    label: "Data de envio Alerta Download App"
    hidden: no
    type: date
    sql: ${download_app.created_at};;
  }

  dimension: data_de_contato_membro {
    label: "Data 1º contato do Time de Saúde via Chat"
    hidden: no
    type: date
    sql: ${data_de_contato_membro.createdat};;
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

  dimension: latitude {
    group_label: "Location"
    type: number
    sql: ${life_locations.latitude} ;;
  }
  dimension: longitude {
    group_label: "Location"
    type: number
    sql: ${life_locations.longitude} ;;
  }

   dimension: location {
    group_label: "Location"
    type: location
    sql_latitude: ${life_locations.latitude} ;;
    sql_longitude: ${life_locations.longitude};;
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

  }

  dimension: careteamid {
    label: "Careteam ID"
    hidden: no
    type: string
    sql: ${users.careteamid} ;;
  }

  dimension: cost {
    label: "Valor por Membro"
    hidden: no
    type: number
    sql: ${beneficiaries_dw.cost} ;;
  }

  dimension: grace {
    label: "Tipos de Carência"
    group_label: "Períodos de Carência"
    type: string
    sql: Case
when ${grace_period.grace} = 'grace_period_appointment' THEN 'Dias de carência de consulta'
when ${grace_period.grace} = 'grace_period_exam' THEN 'Dias de carência de exame'
when ${grace_period.grace} = 'grace_period_hospitalization' THEN 'Dias de carência de hospitalização'
when ${grace_period.grace} = 'grace_period_childbirth' THEN 'Dias de carência de parto'
when ${grace_period.grace} = 'grace_period_elective_surgeries' THEN 'Dias de carência de cirurgias'
when ${grace_period.grace} = 'grace_period_exam_special' THEN 'Dias de carência de exames especiais'
when ${grace_period.grace} = 'grace_period_therapy' THEN 'Dias de carência de terapia'
when ${grace_period.grace} = 'grace_period_ambulatory_procedures' THEN 'Dias de carência de procedimento ambulatoriais'
when ${grace_period.grace} = 'grace_period_pre_existing_diseases' THEN 'Dias de carência de doenças pré existentes'
end
;;
  }

  dimension: grace_period_appointment {
    label: "Dias de Carência"
    group_label: "Períodos de Carência"
    type: number
    sql:${grace_period.days} ;;
  }

  dimension: cpt {
    label: "CPT"
    group_label: "Períodos de Carência"
    type: string
    sql:${cpt.answer} ;;
  }

  dimension: id_t {
    label: "ID Hubspot"
    group_label: "Ticket de Atendimento"
    hidden: no
    type: string
    sql: ${ticket.id} ;;
    link: {
      label: "Hubspot"
      url: "https://app.hubspot.com/contacts/8341620/ticket/{{value}}"
    }
  }

  dimension: property_content {
    group_label: "Ticket de Atendimento"
    label: "Conteúdo do Atendimento"
    hidden: no
    type: string
    sql: ${ticket.property_content} ;;
  }

  dimension: property_createdate {
    group_label: "Ticket de Atendimento"
    label: "Data de Criacao do Ticket"
    hidden: no
    type: date
    sql: ${ticket.property_createdate} ;;
  }

  dimension: property_motivo {
    group_label: "Ticket de Atendimento"
    hidden: yes
    type: string
    sql: ${ticket.property_motivo} ;;
  }

  dimension: property_motivo_do_contato {
    group_label: "Ticket de Atendimento"
    label: "Motivo do Contato"
    hidden: no
    type: string
    sql: CASE
            WHEN ${ticket.property_motivo_do_contato} IS NULL THEN ${ticket.property_motivo}
            ELSE ${ticket.property_motivo_do_contato}
            end;;
  }

  dimension: property_satisfacao {
    group_label: "Ticket de Atendimento"
    label: "Satisfação"
    hidden: no
    type: string
    sql: ${ticket.property_satisfacao} ;;
  }

  dimension: property_source_type {
    group_label: "Ticket de Atendimento"
    label: "Tipo de Atendimento"
    type: string
    sql: ${ticket.property_source_type} ;;
  }

  dimension: property_sub_motivo {
    group_label: "Ticket de Atendimento"
    label: "Submotivo do Contato"
    hidden:no
    type: string
    sql: ${ticket.property_sub_motivo} ;;
  }

  dimension: property_subject {
    group_label: "Ticket de Atendimento"
    label: "Assunto"
    hidden: no
    type: string
    sql: ${ticket.property_subject} ;;
  }

  dimension: son {
    label: "Possui Filho?"
    type: string
    sql:${parentesco.son};;
  }

    dimension: spouse {
      label: "Casado?"
      type: string
      sql:${parentesco.spouse};;
  }

  measure: count {
    type: count
    drill_fields: [id, name, mothersname, plans.id, plans.name]
  }
}
