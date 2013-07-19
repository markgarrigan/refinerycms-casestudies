module Refinery
  module Casestudies
    class CasestudiesController < ::ApplicationController

      before_filter :find_all_casestudies
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @casestudy in the line below:
        present(@page)
      end

      def show
        @casestudy = Casestudy.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @casestudy in the line below:
        present(@page)
      end

    protected

      def find_all_casestudies
        @casestudies = Casestudy.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/casestudies").first
      end

    end
  end
end
