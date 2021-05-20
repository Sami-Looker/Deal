view: cpt {
  derived_table: {
    indexes: ["cpf"]
    sql:Select ds.*
      ,cpt.answer
      ,CASE WHEN cpt.answer = 'Sim' THEN 'DS Positiva' ELSE 'DS Negativa' end as analise_ds
      FROM
      (select distinct
                            l.document_identification_primary as cpf
                            ,'DS Preenchida' as DS
                            FROM datawarehouse.survey_responses sr
                            LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
                            LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
                            LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
                            WHERE SC.survey_concept_id = 3 AND c.domain_id = 25) ds
      LEFT JOIN
      (select distinct
            l.document_identification_primary as cpf,
            c.description as answer
            FROM datawarehouse.survey_responses sr
            LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
            LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
            LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
            WHERE SC.survey_concept_id = 3 AND c.domain_id = 25 and c.description = 'Sim') cpt on (ds.cpf=cpt.cpf) ;;
    persist_for: "2 hours"
  }

  dimension: cpf {
    hidden: yes
    primary_key: yes
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: analise_ds {
    hidden: yes
    type: string
    sql:
        Case
        when ${TABLE}."analise_ds" is null then 'Não Preenchida' else ${TABLE}."analise_ds"
        end;;
  }
}
