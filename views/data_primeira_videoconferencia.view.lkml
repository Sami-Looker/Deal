view: data_primeira_videoconferencia {
    label: "data_primeira_videoconferencia"
    derived_table: {
      indexes: ["cpf"]
      sql:
  SELECT *
  FROM(
      SELECT
      p.cpf
    , cha.createdat
    , cha.to
    , cha.attachmentname
    , ROW_NUMBER() OVER (PARTITION BY p.cpf ORDER BY cha.createdat) AS primeira_data
      FROM careteam.chats cha
      LEFT JOIN careteam.patients p ON (cha.to = p.id)
      WHERE cha.attachmentname = 'call history'
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
      label: "Data da 1° Videoconferencia"
      type: date
      hidden: yes
      sql: ${TABLE}."createdat" ;;
    }
  }
