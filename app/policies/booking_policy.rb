# app/policies/booking_policy.rb
class BookingPolicy < ApplicationPolicy
    def create?
      user&.customer?
    end
  end
  