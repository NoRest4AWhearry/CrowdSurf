class TicketType < ActiveRecord::Base
	before_save {self.ticket_fee = cost * 0.05}
	before_save {self.total_price = cost + ticket_fee}
	before_destroy :no_purchases

	# Database Relationships
	belongs_to :event
	has_many :tickets
	has_many :purchases

	# Validations
	validates :name, presence: true

	def free?
		cost.blank? || cost.zero?
	end

	# Methods
	def no_purchases
		purchases.blank? ? true : false
	end
end
