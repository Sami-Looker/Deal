view: hra_imc {
 derived_table: {
  indexes: ["cpf"]
  sql:SELECT *
,round((a.peso/((a.altura)^2)),1) as "imc"
,CASE
    WHEN (round((a.peso/((a.altura)^2)),1)) between 0 and 18.5 then 'Abaixo do Peso'
    WHEN (round((a.peso/((a.altura)^2)),1)) between 18.5 and 24.9 then 'Peso Normal'
    WHEN (round((a.peso/((a.altura)^2)),1)) between 25 and 29.9 then 'Sobrepeso'
    WHEN (round((a.peso/((a.altura)^2)),1)) between 30 and 34.9 then 'Obesidade'
    WHEN (round((a.peso/((a.altura)^2)),1)) between 35 and 100 then 'Obesidade Severa'
    end as "imc_cla"
FROM
(SELECT * FROM datawarehouse.crosstab(
          $$select
              l.document_identification_primary
             ,CASE WHEN (TO_NUMBER(sr.ANSWER_AS_STRING,'999.9'))>3 THEN 'Peso(kg)' ELSE 'Altura(m)' END AS questioN_as_string
             ,sr.ANSWER_AS_STRING
              FROM datawarehouse.survey_responses sr
              LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
              LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
              LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
              WHERE SR.QUESTION_SOURCE_VALUE = '018fccd2-e11e-4665-b443-6f5205f0fe05'
              GROUP BY l.document_identification_primary, questioN_as_string, sr.ANSWER_AS_STRING
              ORDER BY 1,2$$,
          $$select
            sr.questioN_as_string
            FROM datawarehouse.survey_responses sr
            LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
            LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
            LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
            WHERE sr.ANSWER_AS_STRING is not null and SC.survey_concept_id = 3
            GROUP BY sr.questioN_as_string$$) AS t (CPF text, peso numeric, altura numeric))a ;;
  persist_for: "2 hours"
}

  dimension: cpf {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: peso {
    hidden: yes
    type: number
    sql: ${TABLE}."peso" ;;
  }

  dimension: altura {
    hidden: yes
    type: number
    sql: ${TABLE}."altura" ;;
  }

  dimension: imc {
    hidden: yes
    type: number
    sql: ${TABLE}."imc" ;;
  }

  dimension: imc_cla {
    hidden: yes
    type: number
    sql: ${TABLE}."imc_cla" ;;
  }
}
