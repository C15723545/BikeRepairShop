class Repair < ApplicationRecord
	belongs_to :discount, :optional => true
	belongs_to :customer, :optional => true
	has_many :partsrequireds, dependent: :destroy
	has_many :parts, through: :partsrequireds
end
