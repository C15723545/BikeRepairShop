class Feedback < ApplicationRecord
  belongs_to :repair
  belongs_to :customer
  validates :content, presence: true 
end
