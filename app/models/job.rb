class Job < ApplicationRecord
	has_many :repairs, dependent: :destroy
end
