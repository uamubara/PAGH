class Gender < ApplicationRecord

  has_many :members
  has_many :family_members

  def display_name
    gender

  end
end
