class ExamPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # Only admin can update it
    record.user == user
  end

  def create?
    # Only admin can create it
    update?
  end

  def destroy?
    update?
  end
end
