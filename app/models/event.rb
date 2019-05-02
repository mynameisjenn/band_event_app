class Event < ApplicationRecord
	validates :band_id, presence: true
	validates :band_id, uniqueness: true

	belongs_to :user
	belongs_to :wishlist

	belongs_to :venue
	belongs_to :band
end
