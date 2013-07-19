module Refinery
  module Casestudies
    module Admin
      class CasestudiesController < ::Refinery::AdminController

        crudify :'refinery/casestudies/casestudy', :xhr_paging => true

      end
    end
  end
end
