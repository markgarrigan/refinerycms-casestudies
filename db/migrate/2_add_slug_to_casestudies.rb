class AddSlugToCasestudies < ActiveRecord::Migration
	def change
		add_column :refinery_casestudies, :slug, :string
		add_index :refinery_casestudies, :slug
	end
end