view: invoices {
  label: "Guias Médicas"
   derived_table: {
    indexes: ["id"]
    sql:
    SELECT
i.id
,i.life_id
,i.authorization_request_at
,i.authorization_approval_at
,i.execution_at
,i.episode_id
,(CASE WHEN csr.name IS NULL THEN 'SAMI CARE TEAM' ELSE csr.name END) as caresite_requester
,(CASE WHEN cse.caresite_executor IS NULL THEN 'SAMI CARE TEAM' ELSE cse.caresite_executor END) AS caresite_executor
,t.description AS type_concept
,n.description AS nature_type_concept_id
,s.description AS status_concept_id
FROM datawarehouse.invoices i
LEFT JOIN datawarehouse.care_sites csr ON (i.caresite_requester_id = csr.id)
LEFT JOIN
(SELECT
i.id
,cs.name AS caresite_executor
FROM datawarehouse.invoices i
LEFT JOIN datawarehouse.care_sites cs ON (i.caresite_executor_id = cs.id)) cse ON (i.id = cse.id)
LEFT JOIN
(SELECT
domain_id
,concept_id
,description
FROM datawarehouse.concepts
WHERE domain_id = '53') t ON (i.type_concept_id = t.concept_id)
LEFT JOIN
(SELECT
domain_id
,concept_id
,description
FROM datawarehouse.concepts
WHERE domain_id = '54') n ON (i.nature_type_concept_id = n.concept_id)
LEFT JOIN
(SELECT
domain_id
,concept_id
,description
FROM datawarehouse.concepts
WHERE domain_id = '55') s ON (i.status_concept_id = s.concept_id)
        ;;
    persist_for: "2 hours"
  }
  dimension: id {
    primary_key: yes
    label: "Número da Guia"
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: caresite_requester {
    label: "Prestador Solicitante"
    type: string
    sql: ${TABLE}."caresite_requester" ;;
  }

  dimension: caresite_executor {
    label: "Prestador Executante"
    type: string
    sql: ${TABLE}."caresite_executor" ;;
  }

  dimension: type_concept {
    label: "Tipo"
    type: string
    sql: ${TABLE}."type_concept" ;;
  }

  dimension: nature_type_concept_id {
    label: "Natureza"
    type: string
    sql: ${TABLE}."nature_type_concept_id" ;;
  }

  dimension: status_concept_id {
    label: "Status"
    type: string
    sql: ${TABLE}."status_concept_id" ;;
  }

  dimension_group: authorization_request_at {
    label: "Data de solicitação da autorização"
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
    sql: ${TABLE}."authorization_request_at" ;;
  }

  dimension_group: authorization_approval_at {
    label: "Data de aprovação da autorização"
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
    sql: ${TABLE}."authorization_approval_at" ;;
  }

  dimension: episode_id {
    type: number
    hidden: yes
    sql: ${TABLE}."episode_id" ;;
  }

  dimension_group: execution {
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
    sql: ${TABLE}."execution_at" ;;
  }

  dimension: life_id {
    hidden: yes
    type: number
    sql: ${TABLE}."life_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
