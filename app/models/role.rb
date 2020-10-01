class Role < ApplicationRecord
  has_many :members

  def display_name
    role

  end
end
