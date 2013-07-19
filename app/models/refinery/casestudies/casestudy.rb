module Refinery
  module Casestudies
    class Casestudy < Refinery::Core::BaseModel
	  extend FriendlyId
	  
	  friendly_id :title, :use => [:slugged]

      self.table_name = 'refinery_casestudies'	

      attr_accessible :title, :description, :body, :date, :picture_id, :samples, :display, :position

      acts_as_indexed :fields => [:title, :description, :body]

      validates :title, :presence => true, :uniqueness => true

      belongs_to :picture, :class_name => '::Refinery::Image'
    end
  end
end
