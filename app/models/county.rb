class County < ApplicationRecord
  belongs_to :state
  has_many :members

  def display_name
    county

  end
end
