class Part < ApplicationRecord
	has_many :partsrequireds, dependent: :destroy
	has_many :repairs, through:  :partsrequireds
	validates :description, presence: true
	validates :description, uniqueness: true
	validates :unit_price, presence: true
end
