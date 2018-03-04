class Customer < ApplicationRecord
	has_many :repairs, dependent: :destroy
	has_many :feedbacks
	has_secure_password
	validates_uniqueness_of :email
	validates :email, email_format: { message: "doesn't look like an email address" }
	
	def self.search(query)
		where("name LIKE ?", "%#{query}%")
	end
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?	
end
