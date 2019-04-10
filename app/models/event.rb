class Event < ApplicationRecord
	belongs_to :user
	belongs_to :wishlist

	has_many :venues
	has_many :bands
end
