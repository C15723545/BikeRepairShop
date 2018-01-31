class Discount < ApplicationRecord
	has_many :repairs, dependent: :destroy
end
