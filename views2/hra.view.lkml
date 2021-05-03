view: hra {
  label: "HRA"
    derived_table: {
      indexes: ["cpf"]
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

  dimension: cpf {
    primary_key: yes
    type: string
    sql: ${TABLE}."cpf" ;;
  }

  dimension: bmi {
    label: "IMC"
    type: number
    sql: ${hra_imc.imc} ;;
  }

  dimension: bmi_classification {
    label: "Classificação IMC"
    type: string
    sql: ${hra_imc.imc_cla} ;;
  }

  dimension: bmi_medical_followup {
    label: "Checkup IMC"
    type: string
    sql: ${TABLE}."bmi_medical_followup" ;;
  }

  dimension: current_health_grade {
    label: "Nota de Saúde"
    type: number
    sql: ${hra_pt.nota_saude} ;;
  }

  dimension: current_health_medical_followup {
    label: "Checkup Nota de Saúde"
    type: string
    sql: ${TABLE}."current_health_medical_followup" ;;
  }

  dimension: disorder_medical_followup {
    label: "Checkup Sintomas"
    type: string
    sql: ${TABLE}."disorder_medical_followup" ;;
  }

  dimension: disorders_for_more_than_10_days {
    label: "Algum sintoma por mais de 10 dias"
    type: string
    sql: ${TABLE}."disorders_for_more_than_10_days" ;;
  }

  dimension: free_time {
    label: "O que faz no tempo livre"
    type: string
    sql: ${TABLE}."free_time" ;;
  }

  dimension: height {
    label: "Altura"
    type: number
    sql: ${hra_imc.altura} ;;
  }

  dimension: performs_exercises_regularly {
    label: "Pratica exercícios Regularmente"
    type: string
    sql: ${TABLE}."performs_exercises_regularly" ;;
  }

  dimension: presented_some_symptoms {
    label: "Condições clínicas apresentadas"
    type: string
    sql: ${TABLE}."presented_some_symptoms" ;;
  }

  dimension: smokes {
    label: "Fuma"
    type: string
    sql: ${TABLE}."smokes" ;;
  }

  dimension: want_stop_smoking {
    label: "Quer para de fumar?"
    type: string
    sql: ${TABLE}."want_stop_smoking" ;;
  }

  dimension: weight {
    label: "Peso"
    type: number
    sql: ${hra_imc.peso} ;;
  }

  dimension: estratificacao {
    label: "Risco"
    type: string
    sql: CASE
      WHEN  ((${symptoms.presented_some_symptoms} = 'Algum tipo de câncer') OR (${symptoms.presented_some_symptoms} = 'Infarto do miocárdio') OR (${symptoms.presented_some_symptoms} = 'Arritmia cardíaca') OR (${symptoms.presented_some_symptoms} = 'AVC (derrame)') OR (${hra_imc.imc_cla} = 'Obesidade Severa') OR (${symptoms_count.count} BETWEEN 3 and 9)) then 'Alto Risco'
      WHEN  ((${hra_imc.imc_cla} = 'Obesidade') or ((${smokes}= 'Sim'or ${performs_exercises_regularly}='Não') and ${presented_some_symptoms} IS NOT NULL) OR (${symptoms_count.count} BETWEEN 1 and 2) or (${hra_pt.nota_saude} BETWEEN 0 and 4) OR (${disorders_for_more_than_10_days}= 'Sim')) then 'Médio Risco'
      ELSE 'Baixo Risco'
      END ;;
    html: {% if value == 'Alto Risco' %}
      <b><p style="color: black; background-color: #dc7350;
      margin: 0; border-radius: 5px; text-align:center">{{ value
      }}</p></b>
      {% elsif value == 'Médio Risco' %}
      <b><p style="color: black; background-color: #e9b404;
      margin: 0; border-radius: 5px; text-align:center">{{ value
      }}</p></b>
      {% else %}
      <b><p style="color: black; background-color: #49cec1;
      margin: 0; border-radius: 5px; text-align:center">{{ value
      }}</p></b>
      {% endif %}
      ;;
  }

  dimension: symptoms {
    label: "Condições"
    type: string
    hidden: no
    sql: ${symptoms.presented_some_symptoms} ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
