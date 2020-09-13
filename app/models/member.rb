class Member < ApplicationRecord
  belongs_to :gender
  belongs_to :county
  belongs_to :state
  belongs_to :plan
  belongs_to :membership_fee
  belongs_to :role
  belongs_to :status
end
