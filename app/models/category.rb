class Category < ActiveRecord::Base

	#Database Relationships
	has_many :events
end
