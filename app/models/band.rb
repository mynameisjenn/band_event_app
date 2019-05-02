class Band < ApplicationRecord
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :description, presence: true 
	validates :description, uniqueness: true
	validates :picture_url, presence: true
	validates :picture_url, uniqueness: true


	has_many :events
end
