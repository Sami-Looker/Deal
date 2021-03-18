view: parentesco {
  derived_table: {
    indexes: ["cpf"]
    sql:SELECT
*
FROM datawarehouse.crosstab(
'select
 h.cpf
,h.kinship
,1 as "answer"
from hiring.beneficiaries h
where h.kinship is not null
group by h.cpf, h.kinship
ORDER BY 1,2',
'select
 h.kinship
from hiring.beneficiaries h
where h.kinship is not null
group by  h.kinship') AS t (cpf text, p1 text, p2 text, p3 text, p4 text, p5 text, spouse text, p7 text, p8 text, son text)
where t.son is not null or t.spouse is not null or t.cpf is not null ;;
    persist_for: "2 hours"
  }

  dimension: cpf {
    hidden: yes
    primary_key: yes
    type: string
    sql:${TABLE}."cpf" ;;
  }

  dimension: son {
    hidden: yes
    type: string
    sql:
        Case
        when ${TABLE}."son" = 1 then 'Sim'
        end;;
  }

  dimension: spouse {
    hidden: yes
    type: string
    sql:
        Case
        when ${TABLE}."spouse" = 1 then 'Sim'
        end;;
  }
}
