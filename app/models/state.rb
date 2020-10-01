class State < ApplicationRecord
  has_many :counties
  has_many :members

  def display_name
    stateCode

  end
end
