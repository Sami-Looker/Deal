connection: "sami_main"
persist_for: "6 hours"
include: "/views/**/*.view"

explore: users {
  persist_for: "6 hours"
  label: "Membros"
  join: hra {
    type: left_outer
    sql_on:${users.cpf} = ${hra.cpf} ;;
    relationship: one_to_one
 }
  join: hra_imc {
  type: left_outer
  sql_on:${hra_imc.cpf} = ${hra.cpf} ;;
  relationship: one_to_one
}

join: hra_pt {
type: left_outer
sql_on:${hra_pt.cpf} = ${hra.cpf} ;;
relationship: one_to_one
}


  join: dependents {
    type: left_outer
    sql_on:${users._id} = ${dependents.holderuser} ;;
    relationship: one_to_many
  }

  join: symptoms {
    type: left_outer
    sql_on:${users.cpf} = ${symptoms.cpf} ;;
    relationship: one_to_many
  }

  join: symptoms_count {
    type: left_outer
    sql_on:${users.cpf} = ${symptoms_count.cpf} ;;
    relationship: one_to_many
  }

  join: companies {
    type: left_outer
    sql_on: ${beneficiaries.companyid} = ${companies._id} ;;
    relationship: many_to_one
  }

  join: beneficiaries {
    type: left_outer
    sql_on: ${beneficiaries.cpf} = ${users.cpf} ;;
    relationship: one_to_one
  }
}
