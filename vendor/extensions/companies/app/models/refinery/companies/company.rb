module Refinery
  module Companies
    class Company < Refinery::Core::BaseModel
      self.table_name = 'refinery_companies'

      attr_accessible :company_name, :location, :adress, :phone, :email, :point_of_contact, :industry, :market, :departments, :position

      validates :company_name, :presence => true, :uniqueness => true
    end
  end
end
