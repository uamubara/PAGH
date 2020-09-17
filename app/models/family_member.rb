class FamilyMember < ApplicationRecord
  belongs_to :member
  belongs_to :relationship
  belongs_to :gender
end
