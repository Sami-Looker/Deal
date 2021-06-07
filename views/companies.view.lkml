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

  dimension: primary_activity_code {
    hidden: no
    type: string
    sql: ${TABLE}."primary_activity_code" ;;
  }

  dimension: primary_activity_code_new {
    hidden: yes
    type: number
    sql: To_number(left(${TABLE}."primary_activity_code",2),'99') ;;
  }


  dimension: primary_activity_code_secao {
    label: "Seção"
    hidden: yes
    type: string
    sql: CASE
WHEN ${companies.primary_activity_code_new} ='01' THEN 'AGRICULTURA, PECUÁRIA E SERVIÇOS RELACIONADOS'
WHEN ${companies.primary_activity_code_new} ='02' THEN 'PRODUÇÃO FLORESTAL'
WHEN ${companies.primary_activity_code_new} ='03' THEN 'PESCA E AQÜICULTURA'
WHEN ${companies.primary_activity_code_new} ='05' THEN 'EXTRAÇÃO DE CARVÃO MINERAL'
WHEN ${companies.primary_activity_code_new} ='06' THEN 'EXTRAÇÃO DE PETRÓLEO E GÁS NATURAL'
WHEN ${companies.primary_activity_code_new} ='07' THEN 'EXTRAÇÃO DE MINERAIS METÁLICOS'
WHEN ${companies.primary_activity_code_new} ='08' THEN 'EXTRAÇÃO DE MINERAIS NÃO-METÁLICOS'
WHEN ${companies.primary_activity_code_new} ='09' THEN 'ATIVIDADES DE APOIO À EXTRAÇÃO DE MINERAIS'
WHEN ${companies.primary_activity_code_new} ='10' THEN 'FABRICAÇÃO DE PRODUTOS ALIMENTÍCIOS'
WHEN ${companies.primary_activity_code_new} ='11' THEN 'FABRICAÇÃO DE BEBIDAS'
WHEN ${companies.primary_activity_code_new} ='12' THEN 'FABRICAÇÃO DE PRODUTOS DO FUMO'
WHEN ${companies.primary_activity_code_new} ='13' THEN 'FABRICAÇÃO DE PRODUTOS TÊXTEIS'
WHEN ${companies.primary_activity_code_new} ='14' THEN 'CONFECÇÃO DE ARTIGOS DO VESTUÁRIO E ACESSÓRIOS'
WHEN ${companies.primary_activity_code_new} ='15' THEN 'PREPARAÇÃO DE COUROS E FABRICAÇÃO DE ARTEFATOS DE COURO, ARTIGOS'
WHEN ${companies.primary_activity_code_new} ='16' THEN 'FABRICAÇÃO DE PRODUTOS DE MADEIRA'
WHEN ${companies.primary_activity_code_new} ='17' THEN 'FABRICAÇÃO DE CELULOSE, PAPEL E PRODUTOS DE PAPEL'
WHEN ${companies.primary_activity_code_new} ='18' THEN 'IMPRESSÃO E REPRODUÇÃO DE GRAVAÇÕES'
WHEN ${companies.primary_activity_code_new} ='19' THEN 'FABRICAÇÃO DE COQUE, DE PRODUTOS DERIVADOS DO PETRÓLEO E DE BIOCO'
WHEN ${companies.primary_activity_code_new} ='20' THEN 'FABRICAÇÃO DE PRODUTOS QUÍMICOS'
WHEN ${companies.primary_activity_code_new} ='21' THEN 'FABRICAÇÃO DE PRODUTOS FARMOQUÍMICOS E FARMACÊUTICOS'
WHEN ${companies.primary_activity_code_new} ='22' THEN 'FABRICAÇÃO DE PRODUTOS DE BORRACHA E DE MATERIAL PLÁSTICO'
WHEN ${companies.primary_activity_code_new} ='23' THEN 'FABRICAÇÃO DE PRODUTOS DE MINERAIS NÃO-METÁLICOS'
WHEN ${companies.primary_activity_code_new} ='24' THEN 'METALURGIA'
WHEN ${companies.primary_activity_code_new} ='25' THEN 'FABRICAÇÃO DE PRODUTOS DE METAL, EXCETO MÁQUINAS E EQUIPAMENTOS'
WHEN ${companies.primary_activity_code_new} ='26' THEN 'FABRICAÇÃO DE EQUIPAMENTOS DE INFORMÁTICA, PRODUTOS ELETRÔNICOS E'
WHEN ${companies.primary_activity_code_new} ='27' THEN 'FABRICAÇÃO DE MÁQUINAS, APARELHOS E MATERIAIS ELÉTRICOS'
WHEN ${companies.primary_activity_code_new} ='28' THEN 'FABRICAÇÃO DE MÁQUINAS E EQUIPAMENTOS'
WHEN ${companies.primary_activity_code_new} ='29' THEN 'FABRICAÇÃO DE VEÍCULOS AUTOMOTORES, REBOQUES E CARROCERIAS'
WHEN ${companies.primary_activity_code_new} ='30' THEN 'FABRICAÇÃO DE OUTROS EQUIPAMENTOS DE TRANSPORTE, EXCETO VEÍCULOS'
WHEN ${companies.primary_activity_code_new} ='31' THEN 'FABRICAÇÃO DE MÓVEIS'
WHEN ${companies.primary_activity_code_new} ='32' THEN 'FABRICAÇÃO DE PRODUTOS DIVERSOS'
WHEN ${companies.primary_activity_code_new} ='33' THEN 'MANUTENÇÃO, REPARAÇÃO E INSTALAÇÃO DE MÁQUINAS E EQUIPAMENTOS'
WHEN ${companies.primary_activity_code_new} ='35' THEN 'ELETRICIDADE, GÁS E OUTRAS UTILIDADES'
WHEN ${companies.primary_activity_code_new} ='36' THEN 'CAPTAÇÃO, TRATAMENTO E DISTRIBUIÇÃO DE ÁGUA'
WHEN ${companies.primary_activity_code_new} ='37' THEN 'ESGOTO E ATIVIDADES RELACIONADAS'
WHEN ${companies.primary_activity_code_new} ='38' THEN 'COLETA, TRATAMENTO E DISPOSIÇÃO DE RESÍDUOS; RECUPERAÇÃO DE MATER'
WHEN ${companies.primary_activity_code_new} ='39' THEN 'DESCONTAMINAÇÃO E OUTROS SERVIÇOS DE GESTÃO DE RESÍDUOS'
WHEN ${companies.primary_activity_code_new} ='41' THEN 'CONSTRUÇÃO DE EDIFÍCIOS'
WHEN ${companies.primary_activity_code_new} ='42' THEN 'OBRAS DE INFRA-ESTRUTURA'
WHEN ${companies.primary_activity_code_new} ='43' THEN 'SERVIÇOS ESPECIALIZADOS PARA CONSTRUÇÃO'
WHEN ${companies.primary_activity_code_new} ='45' THEN 'COMÉRCIO E REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS'
WHEN ${companies.primary_activity_code_new} ='46' THEN 'COMÉRCIO POR ATACADO, EXCETO VEÍCULOS AUTOMOTORES E MOTOCICLETAS'
WHEN ${companies.primary_activity_code_new} ='47' THEN 'COMÉRCIO VAREJISTA'
WHEN ${companies.primary_activity_code_new} ='49' THEN 'TRANSPORTE TERRESTRE'
WHEN ${companies.primary_activity_code_new} ='50' THEN 'TRANSPORTE AQUAVIÁRIO'
WHEN ${companies.primary_activity_code_new} ='51' THEN 'TRANSPORTE AÉREO'
WHEN ${companies.primary_activity_code_new} ='52' THEN 'ARMAZENAMENTO E ATIVIDADES AUXILIARES DOS TRANSPORTES'
WHEN ${companies.primary_activity_code_new} ='53' THEN 'CORREIO E OUTRAS ATIVIDADES DE ENTREGA'
WHEN ${companies.primary_activity_code_new} ='55' THEN 'ALOJAMENTO'
WHEN ${companies.primary_activity_code_new} ='56' THEN 'ALIMENTAÇÃO'
WHEN ${companies.primary_activity_code_new} ='58' THEN 'EDIÇÃO E EDIÇÃO INTEGRADA À IMPRESSÃO'
WHEN ${companies.primary_activity_code_new} ='59' THEN 'ATIVIDADES CINEMATOGRÁFICAS, PRODUÇÃO DE VÍDEOS E DE PROGRAMAS DE'
WHEN ${companies.primary_activity_code_new} ='60' THEN 'ATIVIDADES DE RÁDIO E DE TELEVISÃO'
WHEN ${companies.primary_activity_code_new} ='61' THEN 'TELECOMUNICAÇÕES'
WHEN ${companies.primary_activity_code_new} ='62' THEN 'ATIVIDADES DOS SERVIÇOS DE TECNOLOGIA DA INFORMAÇÃO'
WHEN ${companies.primary_activity_code_new} ='63' THEN 'ATIVIDADES DE PRESTAÇÃO DE SERVIÇOS DE INFORMAÇÃO'
WHEN ${companies.primary_activity_code_new} ='64' THEN 'ATIVIDADES DE SERVIÇOS FINANCEIROS'
WHEN ${companies.primary_activity_code_new} ='65' THEN 'SEGUROS, RESSEGUROS, PREVIDÊNCIA COMPLEMENTAR E PLANOS DE SAÚDE'
WHEN ${companies.primary_activity_code_new} ='66' THEN 'ATIVIDADES AUXILIARES DOS SERVIÇOS FINANCEIROS, SEGUROS, PREVIDÊN'
WHEN ${companies.primary_activity_code_new} ='68' THEN 'ATIVIDADES IMOBILIÁRIAS'
WHEN ${companies.primary_activity_code_new} ='69' THEN 'ATIVIDADES JURÍDICAS, DE CONTABILIDADE E DE AUDITORIA'
WHEN ${companies.primary_activity_code_new} ='70' THEN 'ATIVIDADES DE SEDES DE EMPRESAS E DE CONSULTORIA EM GESTÃO EMPRES'
WHEN ${companies.primary_activity_code_new} ='71' THEN 'SERVIÇOS DE ARQUITETURA E ENGENHARIA; TESTES E ANÁLISES TÉCNICAS'
WHEN ${companies.primary_activity_code_new} ='72' THEN 'PESQUISA E DESENVOLVIMENTO CIENTÍFICO'
WHEN ${companies.primary_activity_code_new} ='73' THEN 'PUBLICIDADE E PESQUISA DE MERCADO'
WHEN ${companies.primary_activity_code_new} ='74' THEN 'OUTRAS ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
WHEN ${companies.primary_activity_code_new} ='75' THEN 'ATIVIDADES VETERINÁRIAS'
WHEN ${companies.primary_activity_code_new} ='77' THEN 'ALUGUÉIS NÃO-IMOBILIÁRIOS E GESTÃO DE ATIVOS INTANGÍVEIS NÃO-FINA'
WHEN ${companies.primary_activity_code_new} ='78' THEN 'SELEÇÃO, AGENCIAMENTO E LOCAÇÃO DE MÃO-DE-OBRA'
WHEN ${companies.primary_activity_code_new} ='79' THEN 'AGÊNCIAS DE VIAGENS, OPERADORES TURÍSTICOS E SERVIÇOS DE RESERVAS'
WHEN ${companies.primary_activity_code_new} ='80' THEN 'ATIVIDADES DE VIGILÂNCIA, SEGURANÇA E INVESTIGAÇÃO'
WHEN ${companies.primary_activity_code_new} ='81' THEN 'SERVIÇOS PARA EDIFÍCIOS E ATIVIDADES PAISAGÍSTICAS'
WHEN ${companies.primary_activity_code_new} ='82' THEN 'SERVIÇOS DE ESCRITÓRIO, DE APOIO ADMINISTRATIVO E OUTROS SERVIÇOS'
WHEN ${companies.primary_activity_code_new} ='84' THEN 'ADMINISTRAÇÃO PÚBLICA, DEFESA E SEGURIDADE SOCIAL'
WHEN ${companies.primary_activity_code_new} ='85' THEN 'EDUCAÇÃO'
WHEN ${companies.primary_activity_code_new} ='86' THEN 'ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA'
WHEN ${companies.primary_activity_code_new} ='87' THEN 'ATIVIDADES DE ATENÇÃO À SAÚDE HUMANA INTEGRADAS COM ASSISTÊNCIA S'
WHEN ${companies.primary_activity_code_new} ='88' THEN 'SERVIÇOS DE ASSISTÊNCIA SOCIAL SEM ALOJAMENTO'
WHEN ${companies.primary_activity_code_new} ='90' THEN 'ATIVIDADES ARTÍSTICAS, CRIATIVAS E DE ESPETÁCULOS'
WHEN ${companies.primary_activity_code_new} ='91' THEN 'ATIVIDADES LIGADAS AO PATRIMÔNIO CULTURAL E AMBIENTAL'
WHEN ${companies.primary_activity_code_new} ='92' THEN 'ATIVIDADES DE EXPLORAÇÃO DE JOGOS DE AZAR E APOSTAS'
WHEN ${companies.primary_activity_code_new} ='93' THEN 'ATIVIDADES ESPORTIVAS E DE RECREAÇÃO E LAZER'
WHEN ${companies.primary_activity_code_new} ='94' THEN 'ATIVIDADES DE ORGANIZAÇÕES ASSOCIATIVAS'
WHEN ${companies.primary_activity_code_new} ='95' THEN 'REPARAÇÃO E MANUTENÇÃO DE EQUIPAMENTOS DE INFORMÁTICA E COMUNICAÇ'
WHEN ${companies.primary_activity_code_new} ='96' THEN 'OUTRAS ATIVIDADES DE SERVIÇOS PESSOAIS'
WHEN ${companies.primary_activity_code_new} ='97' THEN 'SERVIÇOS DOMÉSTICOS'
WHEN ${companies.primary_activity_code_new} ='99' THEN 'ORGANISMOS INTERNACIONAIS E OUTRAS INSTITUIÇÕES EXTRATERRITORIAIS'
end;;
  }

  dimension: primary_activity_code_divisao {
    label: "Divisão"
    hidden: yes
    type: string
    sql: CASE
      WHEN ${companies.primary_activity_code_new} between 01 and 03 THEN 'AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA'
WHEN ${companies.primary_activity_code_new} between 05 and 09 THEN 'INDÚSTRIAS EXTRATIVAS'
WHEN ${companies.primary_activity_code_new} between 10 and 33 THEN 'INDÚSTRIAS DE TRANSFORMAÇÃO'
WHEN ${companies.primary_activity_code_new} between 35 and 35 THEN 'ELETRICIDADE E GÁS'
WHEN ${companies.primary_activity_code_new} between 36 and 39 THEN 'ÁGUA, ESGOTO, ATIVIDADES DE GESTÃO DE RESÍDUOS E DESCONTAMINAÇÃO'
WHEN ${companies.primary_activity_code_new} between 41 and 43 THEN 'CONSTRUÇÃO'
WHEN ${companies.primary_activity_code_new} between 45 and 47 THEN 'COMÉRCIO; REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS'
WHEN ${companies.primary_activity_code_new} between 49 and 53 THEN 'TRANSPORTE, ARMAZENAGEM E CORREIO'
WHEN ${companies.primary_activity_code_new} between 55 and 56 THEN 'ALOJAMENTO E ALIMENTAÇÃO'
WHEN ${companies.primary_activity_code_new} between 58 and 63 THEN 'INFORMAÇÃO E COMUNICAÇÃO'
WHEN ${companies.primary_activity_code_new} between 64 and 66 THEN 'ATIVIDADES FINANCEIRAS, DE SEGUROS E SERVIÇOS RELACIONADOS'
WHEN ${companies.primary_activity_code_new} between 68 and 68 THEN 'ATIVIDADES IMOBILIÁRIAS'
WHEN ${companies.primary_activity_code_new} between 69 and 75 THEN 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
WHEN ${companies.primary_activity_code_new} between 77 and 82 THEN 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
WHEN ${companies.primary_activity_code_new} between 84 and 84 THEN 'ADMINISTRAÇÃO PÚBLICA, DEFESA E SEGURIDADE SOCIAL'
WHEN ${companies.primary_activity_code_new} between 85 and 85 THEN 'EDUCAÇÃO'
WHEN ${companies.primary_activity_code_new} between 86 and 88 THEN 'SAÚDE HUMANA E SERVIÇOS SOCIAIS'
WHEN ${companies.primary_activity_code_new} between 90 and 93 THEN 'ARTES, CULTURA, ESPORTE E RECREAÇÃO'
WHEN ${companies.primary_activity_code_new} between 94 and 96 THEN 'OUTRAS ATIVIDADES DE SERVIÇOS'
WHEN ${companies.primary_activity_code_new} between 97 and 97 THEN 'SERVIÇOS DOMÉSTICOS'
WHEN ${companies.primary_activity_code_new} between 99 and 99 THEN 'ORGANISMOS INTERNACIONAIS E OUTRAS INSTITUIÇÕES EXTRATERRITORIAIS'

      end;;
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
