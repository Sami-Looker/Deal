view: guia_membro {
  derived_table: {
    indexes: ["email"]
    sql:
    SELECT *
FROM
(SELECT *
      , ROW_NUMBER() OVER (PARTITION BY xy.email ORDER BY xy.created_at) AS email_sequence
      FROM(Select
xx.email
,xx.created_at
,xx.subject
FROM
(SELECT
      et.email
    , e. created_at
    , ea.subject
      FROM hubspotmarketing.engagement_email ea
      LEFT JOIN hubspotmarketing.engagement_email_to et ON (ea.engagement_id = et.engagement_id)
      LEFT JOIN hubspotmarketing.engagement e ON (ea.engagement_id = e.id)
      WHERE ea.subject = 'Guia do Membro Sami'
    Union all
      SELECT
      ee.recipient
    , ee.CREATED
    , es.subject
      FROM hubspotmarketing.email_event_sent es
      LEFT JOIN hubspotmarketing.email_event ee ON (es.id = ee.id)
      WHERE es.subject = 'Você chegou! \o/' or es.subject = 'Você chegou! | Guia do Membro Sami'or es.subject = 'Você chegou! | Veja seu Guia do Membro Sami.' or es.subject = 'Seu Guia do Membro Sami chegou!' or es.subject = 'Você chegou! | Veja seu Guia do Membro Sami') xx
      Order by 1,2)xy)xz
      WHERE xz.email_sequence = 1
        ;;
    persist_for: "2 hours"
  }

  dimension: email{
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."email" ;;
  }

  dimension: created_at{
    type: date
    hidden: yes
    sql: ${TABLE}."created_at" ;;
  }

  dimension: subject{
    type: string
    hidden: yes
    sql: ${TABLE}."created_at" ;;
  }
}
