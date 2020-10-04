class Member < ApplicationRecord
  scope :active_members, -> {
    where(:status_id => 1)
  }

  scope :inactive_expired_membership, -> {
    where(:status_id => 2)
  }

  scope :send_card, ->{
    where(:send_card => true)
  }

  scope :do_not_send_card, ->{
    where(:send_card => false)
  }

  scope :paid, ->{
    where(:membership_fee_id => 1)
  }

  scope :payment_required, ->{
    where(:membership_fee_id => 2)
  }

  scope :voter_list, ->{
    where('age > ?', 15)
  }

  scope :lifetime_members, ->{
      where(:plan_id => 1)
  }

  scope :three_year_members, ->{
    where(:plan_id => 2)
  }

  scope :yearly_members, ->{
    where(:plan_id => 3)
  }




  belongs_to :gender
  belongs_to :county
  belongs_to :state
  belongs_to :plan
  belongs_to :membership_fee
  belongs_to :role
  belongs_to :status
  has_many   :family_member

  def display_name
    title
    first_name
    middle_initial
    last_name_string

  end


end




