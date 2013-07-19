class CreateCasestudiesCasestudies < ActiveRecord::Migration

  def up
    create_table :refinery_casestudies do |t|
      t.string :title
      t.text :description
      t.text :body
      t.datetime :date
      t.integer :picture_id
      t.boolean :samples
      t.boolean :display
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-casestudies"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/casestudies/casestudies"})
    end

    drop_table :refinery_casestudies

  end

end
