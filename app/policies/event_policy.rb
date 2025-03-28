# app/policies/event_policy.rb
class EventPolicy < ApplicationPolicy
    def create?
      user&.organizer?
    end
  
    def update?
      user&.organizer?
    end
  
    def show?
      true # Anyone can see an event
    end

    def destroy?
      user&.organizer?
    end
  end
  