class User < ApplicationRecord
	has_many :wishlists
	has_many :events
end
