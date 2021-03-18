# Macro Status definition - to be used wherever macrostatus is needed
# Use with extends

# Note: 'Carta de interesse assinada' is not handled currently

view: deal_base {
  extension: required

  dimension: macro_status {
    type: string
    sql:
      CASE
       WHEN ${deal_stage} = 'Beneficiários cadastrados' THEN 'SQL'
       WHEN ${deal_stage} = 'Contratação iniciada' THEN 'Contratação Iniciada'
       WHEN ${deal_stage} = 'Contratado' THEN 'Contratado'
       WHEN ${deal_stage} = 'Contrato perdido' THEN 'Contrato perdido'
       WHEN ${deal_stage} = 'Cotação enviada' THEN 'Cotação'
       WHEN ${deal_stage} = 'Carta de interesse enviada' THEN 'Cotação'
       WHEN ${deal_stage} = 'Documentação aprovada' THEN 'Contratação Iniciada'
       WHEN ${deal_stage} = 'Documentação enviada' THEN 'Contratação Iniciada'
       WHEN ${deal_stage} = 'Interesse demonstrado' THEN 'SQL'
       WHEN ${deal_stage} = 'Interesse validado' THEN 'SQL'
       WHEN ${deal_stage} = 'Qualificado e sem contato' THEN 'SQL'
       WHEN ${deal_stage} = 'Declinado' THEN 'Contrato Perdido'
       WHEN ${deal_stage} = 'Contato realizado' THEN 'SQL'
       WHEN ${deal_stage} = 'Onboarding' THEN 'Contratado'
       WHEN ${deal_stage} = 'Pagamento agendado' THEN 'Pgto Agendado'
       WHEN ${deal_stage} = 'Qualificado' THEN 'SQL'
       WHEN ${deal_stage} = 'Qualificado inativo' THEN 'SQL'
       WHEN ${deal_stage} = 'Qualificado com contato' THEN 'SQL'
       WHEN ${deal_stage} = 'Carta de interesse assinada' THEN 'Cotação'
       WHEN ${deal_stage} = 'Sem contato' THEN 'SQL'
       WHEN ${empresa_Nome} = 'SAMI ASSISTENCIA MEDICA LTDA' THEN 'Samer'
      END
    ;;
  }

}
