class Bicycle < ApplicationRecord
	belongs_to :customer, :optional => true
	validates :make, presence: true
	validates :customer, presence: true
end
