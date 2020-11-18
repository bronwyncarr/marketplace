# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    user ||= User.new # guest user (not logged in)
    if user.admin?
      # Admin can manage all and are responsible for upgradeing general users to organiser.
      can :manage, :all
    elsif user.organiser?
      # User must be approved as an organiser and associated with a charity (organisers table) by admin
      # Once approved they can manage the charity they are associated.
      # Everyone who is an organiser can manage the charity and posts of that charity
      can :manage, Task, charity_id: user.charities.ids
      can :manage, Charity, id: user.charities.ids
    else
      # General users can only see tasks and save them to their Interests list
      # General user can add a charity and it will be associated with them but they need to be 'upgraded'
      # by admin to organiser before they can make changes and create posts.
      can %i[index show], Charity
      can %i[index show save], Task
    end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
