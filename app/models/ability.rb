# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.super_admin?
      can :manage, Account, User
    # elsif user.admin?
    #   can :manage: Project
    # elsif user.staff?
    #   can :manage Project
    # elsif user.client?
    #   can :manage Budget
    end
  end
end
