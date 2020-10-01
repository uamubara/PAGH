class Status < ApplicationRecord

  has_many :members

  def display_name
    status

  end
end
