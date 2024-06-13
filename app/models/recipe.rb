class Recipe < ApplicationRecord
	has_many :ingredients, dependent: :destroy

	validates :title, presence: true
	validates :description, presence: true, length: {minimum: 10}
end
