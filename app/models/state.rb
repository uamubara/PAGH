class State < ApplicationRecord
  has_many :counties
  has_many :members
end
