class CreateCompaniesCompanies < ActiveRecord::Migration

  def up
    create_table :refinery_companies do |t|
      t.stringdescription :company_name
      t.string :location
      t.text :adress
      t.string :phone
      t.string :email
      t.text :point_of_contact
      t.string :industry
      t.string :market
      t.string :departments
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-companies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/companies/companies"})
    end

    drop_table :refinery_companies

  end

end
