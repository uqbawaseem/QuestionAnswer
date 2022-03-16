class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new #guest user

   if user.type == "Admin"
     can :manage, :all 
   else 
    can :read, :all
    can :create, [Editor, Viewer]
   end
  end
end
