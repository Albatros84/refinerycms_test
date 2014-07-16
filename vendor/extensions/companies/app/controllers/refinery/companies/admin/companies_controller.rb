module Refinery
  module Companies
    module Admin
      class CompaniesController < ::Refinery::AdminController

        crudify :'refinery/companies/company',
                :title_attribute => 'company_name',
                :xhr_paging => true

      end
    end
  end
end
