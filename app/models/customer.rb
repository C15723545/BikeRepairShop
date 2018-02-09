class Customer < ApplicationRecord
	has_many :repairs, dependent: :destroy
	has_secure_password
	validates :email, presence: true
	validates_uniqueness_of :email
end
