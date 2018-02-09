class Part < ApplicationRecord
	has_many :quantities, dependent: :destroy
	has_many :repairs, through:  :quantity
	validates :description, presence: true
	validates :description, uniqueness: true
	validates :unit_price, presence: true
end
