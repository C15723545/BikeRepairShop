class Repair < ApplicationRecord
	belongs_to :job, :optional => true
	belongs_to :customer, :optional => true
	has_many :partsrequireds, dependent: :destroy
	has_many :parts, through: :partsrequireds
	validates :repair_detail, presence: true
	validates :job, presence: true
	validates :customer, presence: true
end
