class TicketType < ActiveRecord::Base

	# Database Relationships
	belongs_to :event
	has_many :tickets
	has_many :purchases

	# Validations
	validates :name, presence: true

end
