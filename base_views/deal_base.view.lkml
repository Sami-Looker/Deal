# Macro Status definition - to be used wherever macrostatus is needed
# Use with extends

# Note: 'Carta de interesse assinada' is not handled currently

view: deal_base {
  extension: required

  dimension: deal_stage { type: string } # This is a dummy dimension that is overwritten on extends

  dimension: macro_status {
    type: string
    sql:
      CASE
       WHEN ${deal_stage} = 'Beneficiários cadastrados' THEN 'SQL'
       WHEN ${deal_stage} = 'Contratação iniciada' THEN 'Contratação - Contratação Iniciada'
       WHEN ${deal_stage} = 'Contratado' THEN 'Contratação - Contratado'
       WHEN ${deal_stage} = 'Contrato perdido' THEN 'Contratação - Contratação Iniciada'
       WHEN ${deal_stage} = 'Cotação enviada' THEN 'Cotação'
       WHEN ${deal_stage} = 'Documentação aprovada' THEN 'Contratação - Contratação Iniciada'
       WHEN ${deal_stage} = 'Documentação enviada' THEN 'Contratação - Contratação Iniciada'
       WHEN ${deal_stage} = 'Interesse demonstrado' THEN 'SQL'
       WHEN ${deal_stage} = 'Onboarding' THEN 'Contratação - Contratado'
       WHEN ${deal_stage} = 'Pagamento agendado' THEN 'Contratação - Pgto Agendado'
       WHEN ${deal_stage} = 'Qualificado' THEN 'SQL'
       WHEN ${deal_stage} = 'Qualificado inativo' THEN 'SQL'
       WHEN ${deal_stage} = 'Qualificado sem contato' THEN 'SQL'
      END
    ;;
  }

}
