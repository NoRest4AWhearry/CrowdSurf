class City < ActiveRecord::Base

	# Database Relationships
	has_many   :events
	belongs_to :state
end
