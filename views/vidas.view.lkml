view:vidas {
    derived_table: {
          explore_source: deal {
            column: cnpj { field: company.cnpj }
            column: count { field: beneficiaries.count }
            filters: {
              field: deal.is_deleted
              value: "no"
            }
          }
        }
        dimension: cnpj {
          hidden: yes
          label: "Empresas CNPJ"
        }
        dimension: count {
          hidden: yes
          label: "Membros Count"
          type: number
        }
      }
