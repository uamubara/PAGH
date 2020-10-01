class Plan < ApplicationRecord

  has_many :member

  def display_name
    membershipPlan

  end

  end
