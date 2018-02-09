class Repair < ApplicationRecord
	belongs_to :job, :optional => true
	belongs_to :customer, :optional => true
	has_many :quantities, dependent: :destroy
	has_many :parts, through: :quantity
	validates :repair_detail, presence: true
	validates :job, presence: true
	validates :customer, presence: true
end
