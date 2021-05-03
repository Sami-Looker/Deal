  view: hra2 {
    derived_table: {
      sql:SELECT Replace(REPLACE(REPLACE(ga.cpf,'{',''),'}',''),'"','') as cpf
,Replace(REPLACE(REPLACE(ga.p2,'{',''),'}',''),'"','') as smokes
,Replace(REPLACE(REPLACE(ga.p3,'{',''),'}',''),'"','') as disorders_for_more_than_10_days
,Replace(REPLACE(REPLACE(ga.p4,'{',''),'}',''),'"','') as disorder_medical_followup
,Replace(REPLACE(REPLACE(ga.p5,'{',''),'}',''),'"','') as test
,Replace(REPLACE(REPLACE(ga.p6,'{',''),'}',''),'"','') as want_stop_smoking
,Replace(REPLACE(REPLACE(ga.p7,'{',''),'}',''),'"','') as current_health_medical_followup
,Replace(REPLACE(REPLACE(ga.p8,'{',''),'}',''),'"','') as performs_exercises_regularly
,Replace(REPLACE(REPLACE(ga.p9,'{',''),'}',''),'"','') as free_time
,Replace(REPLACE(REPLACE(ga.p10,'{',''),'}',''),'"','') as presented_some_symptoms
,Replace(REPLACE(REPLACE(ga.p11,'{',''),'}',''),'"','') as wants_receive_health_and_food_tips
,Replace(REPLACE(REPLACE(ga.p12,'{',''),'}',''),'"','') as bmi_medical_followup
FROM
(SELECT * FROM datawarehouse.crosstab(
          'select
              l.document_identification_primary
             ,sr.questioN_as_string
             ,array_agg((CASE
                  WHEN (c.description IS NULL) THEN sr.ANSWER_AS_STRING ELSE c.description
               END)) AS "ANSWER"
              FROM datawarehouse.survey_responses sr
              LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
              LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
              LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
              WHERE SC.survey_concept_id = 1 AND c.domain_id = 25
              GROUP BY l.document_identification_primary, sr.questioN_as_string
              ORDER BY 1,2',
          'select
            sr.questioN_as_string
            FROM datawarehouse.survey_responses sr
            LEFT JOIN datawarehouse.survey_conducts sc ON (sr.episode_survey_conduct_id = sc.id)
            LEFT JOIN datawarehouse.lives l ON (l.id = sc.life_id)
            LEFT JOIN datawarehouse.concepts c ON (c.synonym_id = sr.answer_synonym_id)
            WHERE SC.survey_concept_id = 1 AND c.domain_id = 25
            GROUP BY sr.questioN_as_string') AS t (CPF varchar, P2 text, P3 text, P4 text, P5 text, P6 text, P7 text, P8 text, P9 text, P10 text, P11 text, P12 text)) ga

       ;;
      persist_for: "2 hours"
    }

    measure: count {
      type: count
    }

    dimension: cpf {
      primary_key: yes
      type: string
      sql: ${TABLE}."cpf" ;;
    }

    dimension: smokes {
      type: string
      sql: ${TABLE}."smokes" ;;
    }

    dimension: disorders_for_more_than_10_days {
      type: string
      sql: ${TABLE}."disorders_for_more_than_10_days" ;;
    }

    dimension: disorder_medical_followup {
      type: string
      sql: ${TABLE}."disorder_medical_followup" ;;
    }

    dimension: want_stop_smoking {
      type: string
      sql: ${TABLE}."want_stop_smoking" ;;
    }

    dimension: current_health_medical_followup {
      type: string
      sql: ${TABLE}."current_health_medical_followup" ;;
    }

    dimension: performs_exercises_regularly {
      type: string
      sql: ${TABLE}."performs_exercises_regularly" ;;
    }

    dimension: free_time {
      type: string
      sql: ${TABLE}."free_time" ;;
    }

    dimension: presented_some_symptoms {
      type: string
      sql: ${TABLE}."presented_some_symptoms" ;;
    }

    dimension: wants_receive_health_and_food_tips {
      type: string
      sql: ${TABLE}."wants_receive_health_and_food_tips" ;;
    }

    dimension: bmi_medical_followup {
      type: string
      sql: ${TABLE}."bmi_medical_followup" ;;
    }

    dimension: symptoms {
      label: "Condições"
      hidden: no
      sql: ${symptoms.presented_some_symptoms} ;;
    }
  }
