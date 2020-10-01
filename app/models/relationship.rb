class Relationship < ApplicationRecord
  has_many :family_member

  def display_name
    relation

  end
end
