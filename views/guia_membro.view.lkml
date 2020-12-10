view: guia_membro {
  label: "guia_membro"
  derived_table: {
    indexes: ["email"]
    sql:
      SELECT
      et.email
    , e. created_at
      FROM hubspot_mkt.engagement_email ea
      LEFT JOIN hubspot_mkt.engagement_email_to et ON (ea.engagement_id = et.engagement_id)
      LEFT JOIN hubspot_mkt.engagement e ON (ea.engagement_id = e.id)
      WHERE ea.subject = 'Guia do Membro Sami'
        ;;
    persist_for: "30 minutes"
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
}
