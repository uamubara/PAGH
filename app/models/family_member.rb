class FamilyMember < ApplicationRecord

  scope :voter_list, ->{
    where('age > ?', 15)
  }

  belongs_to :member
  belongs_to :relationship
  belongs_to :gender
end
