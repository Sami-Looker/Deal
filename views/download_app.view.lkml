view: download_app {
derived_table: {
  indexes: ["email"]
  sql:
      SELECT
      et.email
    , e. created_at
    , ea.subject
      FROM hubspot_mkt_.engagement_email ea
      LEFT JOIN hubspot_mkt_.engagement_email_to et ON (ea.engagement_id = et.engagement_id)
      LEFT JOIN hubspot_mkt_.engagement e ON (ea.engagement_id = e.id)
      WHERE ea.subject = 'Você já baixou tanto app, é hora de baixar o da Sami.'
    Union all
      SELECT
      ee.recipient
    , ee.CREATED
    , es.subject
      FROM hubspot_mkt_.email_event_sent es
      LEFT JOIN hubspot_mkt_.email_event ee ON (es.id = ee.id)
      WHERE es.subject = 'Você já baixou tanto app, é hora de baixar o da Sami.'
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
