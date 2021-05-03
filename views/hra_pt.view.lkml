view: hra_pt {
derived_table: {
  indexes: ["cpf"]
  sql:select
              l.document_identification_primary as "cpf"
             ,sr.questioN_as_string
             ,cast(sr.ANSWER_AS_STRING as numeric) as "nota_saude"
              FROM datawarehouse.survey_responses sr
              LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
              LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
              LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
              WHERE sr.question_synonym_id = 10 and SC.survey_concept_id = 1
              GROUP BY l.document_identification_primary, sr.questioN_as_string,sr.ANSWER_AS_STRING
              ORDER BY 1,2 ;;
  persist_for: "2 hours"
}

dimension: cpf {
  hidden: yes
  primary_key: yes
  type: string
  sql: ${TABLE}."cpf" ;;
}

dimension: nota_saude {
  hidden: yes
  type: number
  sql: ${TABLE}."nota_saude" ;;
}
}
