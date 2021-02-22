view:vidas {
    derived_table: {
      explore_source: deal {
        column: property_no_do_cnpj {}
        column: count { field: beneficiaries.count }
        filters: {
          field: deal.is_deleted
          value: "no"
        }
        filters: {
          field: deal.property_no_do_cnpj
          value: "-NULL"
        }
      }
    }
    dimension: property_no_do_cnpj {
      primary_key: yes
      hidden: yes
      label: "Deal CNPJ"
    }
    dimension: count {
      hidden: yes
      label: "Membros Count"
      type: number
    }
  }
