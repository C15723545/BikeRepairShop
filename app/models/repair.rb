class Repair < ApplicationRecord
	belongs_to :job, :optional => true
	belongs_to :customer, :optional => true
	has_many :quantities, dependent: :destroy
	has_many :parts, through: :quantity
	has_many :feedbacks
	validates :repair_detail, presence: true
	validates :job, presence: true
	validates :customer, presence: true
	
	def self.search(query, current_page)
		if query
			page(current_page).where("description LIKE ?", "%#{query}%").order('id DESC')
		else
			page(current_page).order('id DESC') 
		end
	end
end
