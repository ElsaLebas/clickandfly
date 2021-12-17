class PlanePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user # record = the plane instance passed to the `authorize` method in controller and user => current_user
  end

  def destroy?
    record.user == user
  end
  
end





