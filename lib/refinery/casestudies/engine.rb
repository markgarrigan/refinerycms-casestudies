module Refinery
  module Casestudies
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Casestudies

      engine_name :refinery_casestudies

      initializer "register refinerycms_casestudies plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "casestudies"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.casestudies_admin_casestudies_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/casestudies/casestudy'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Casestudies)
      end
    end
  end
end
