class MembershipFee < ApplicationRecord
  has_many :members

  def display_name
    membership_fees_status

  end
end
