class Ability
  include CanCan::Ability
    def initialize(user)
      user ||= User.new #guest user
    if user.type == "Admin"
      can :manage, :all
    end
    if user.type == "Editor"
      can :manage, Question
      can :manage, Technology
      can :read, [Editor]
      can [:update, :read], Editor, id: user.id
    end
    if user.type == "Viewer"
      can :read, Question
      can [:update, :read], Viewer, id: user.id
    end
  end
end
