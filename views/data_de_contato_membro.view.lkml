view: data_de_contato_membro {
  label: "Deal History"
  derived_table: {
    indexes: ["deal_id"]
    sql:
  SELECT *
  FROM(
      SELECT
      p.cpf
    , cha.createdat
    , cha.to
    , ROW_NUMBER() OVER (PARTITION BY p.cpf ORDER BY cha.createdat) AS primeira_data
      FROM careteam.chats cha
      LEFT JOIN careteam.patients p ON (cha.to = p.id)
      WHERE cha.ispatient = '0'
      ORDER BY p.cpf ,cha.createdat
      ) xx
  WHERE xx.primeira_data = '1'
    ;;
    persist_for: "30 minutes"
  }

  dimension: cpf{
    type: string
    primary_key: yes
    hidden: yes
  }
}
