class Ability
  include CanCan::Ability



  def initialize(user)
  can :manage, :all if user.is? :admin

  can :reag, :all if user

  end
end  