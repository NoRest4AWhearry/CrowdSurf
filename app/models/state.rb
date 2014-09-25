class State < ActiveRecord::Base
	# Database Relationships
	has_many :events
	has_many :cities

	#Validations
	validates :name, uniqueness: :true
end
