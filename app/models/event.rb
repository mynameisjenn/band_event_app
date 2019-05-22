class Event < ApplicationRecord
	validates :band_id, presence: true
	validates :band_id, uniqueness: true

	belongs_to :user
	belongs_to :wishlist

	belongs_to :venue
	belongs_to :band

	## attempt at formatted datetime - currently not working
	def friendly_time
		@event_info.each do |event_hash|
			datetime = event_hash["datetime"].strftime("%A, %d %b %Y %l:%M %p")	
		end
	end

end
