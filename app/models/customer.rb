class Customer < ApplicationRecord
	has_many :repairs, dependent: :destroy
	has_many :bicycles, dependent: :destroy
	validates :name, presence: true
	validates :phone, presence: true
	validates :phone, uniqueness: true
end
