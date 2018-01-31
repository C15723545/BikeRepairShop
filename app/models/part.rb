class Part < ApplicationRecord
	has_many :partsrequireds, dependent: :destroy
	has_many :repairs, through:  :partsrequireds
end
