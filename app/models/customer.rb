class Customer < ApplicationRecord
	has_many :repairs, dependent: :destroy
	has_many :bicycles, dependent: :destroy
end
