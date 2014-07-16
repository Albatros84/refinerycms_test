module Refinery
  module Companies
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Companies

      engine_name :refinery_companies

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "companies"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.companies_admin_companies_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/companies/company',
            :title => 'location'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Companies)
      end
    end
  end
end
