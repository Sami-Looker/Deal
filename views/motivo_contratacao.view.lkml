view: motivo_contratacao {
  derived_table: {
    indexes: ["cnpj"]
    sql: SELECT
      t.cnpj
      ,t.partner
      ,t.employee
      ,t.dependent
      ,(Case
        when t.partner = '1' and t.employee is null and t.dependent is null then 'Para mim'
        when t.employee = '1' then 'Para Empresa'
        when t.partner = '1' and t.employee is null and t.dependent ='1' then 'Para Familia'
        end) as "para quem contratou"
      FROM datawarehouse.crosstab(
      'select
       h.cnpj
      ,b.profile
      ,1 as "answer"
      from hiring.companies h
      LEFT JOIN  hiring.beneficiaries b ON (h._id = b.companyid)
      where b.profile is not null
      group by h.cnpj, b.profile
      ORDER BY 1,2',
      'select
      b.profile
      from hiring.companies h
      LEFT JOIN  hiring.beneficiaries b ON (h._id = b.companyid)
      where b.profile is not null
      group by  b.profile') AS t (cnpj text, dependent text, employee text, partner text)
       ;;
    persist_for: "2 hours"
  }

  dimension: cnpj {
    primary_key: yes
    hidden: yes
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: para_quem_contratou {
    hidden: yes
    type: string
    label: "Para quem contratou?"
    sql: ${TABLE}."para quem contratou" ;;
  }

}
