view: data_de_resposta_membro {
    label: "data_de_resposta_membro"
    derived_table: {
      indexes: ["cpf"]
      sql:
          SELECT *
  FROM(
      SELECT
      p.cpf
    , cha.createdat
    , cha.from
    , ROW_NUMBER() OVER (PARTITION BY p.cpf ORDER BY cha.createdat) AS primeira_data
      FROM careteam.chats cha
      LEFT JOIN careteam.patients p ON (cha.from = p.id)
      WHERE cha.ispatient = '1'
      ORDER BY p.cpf ,cha.createdat
      ) xx
  WHERE xx.primeira_data = '1'
          ;;
      persist_for: "2 hours"
    }

    dimension: cpf{
      type: string
      primary_key: yes
      hidden: yes
      sql: ${TABLE}."cpf" ;;
    }

    dimension: createdat{
      label: "Data resposta ao chat do Time Clínico"
      type: date
      hidden: yes
      sql:${TABLE}."createdat";;
    }
  }
