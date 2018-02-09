class Quantity < ApplicationRecord
  belongs_to :repair
  belongs_to :part
end
