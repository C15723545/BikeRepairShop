class Staff < ApplicationRecord
	has_many :repairs, dependent: :destroy
	has_secure_password
	validates_uniqueness_of :email
	validates :email, email_format: { message: "doesn't look like an email address" }
	
end
