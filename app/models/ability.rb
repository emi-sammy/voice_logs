class Ability
  include CanCan::Ability

  def initialize(evaluator)
    if evaluator.try(:admin?)
      can :access, :rails_admin
      can :manage, :all
    end
  end
end
