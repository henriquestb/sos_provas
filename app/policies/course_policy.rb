class CoursePolicy < ApplicationPolicy
  attr_reader :user, :record

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

  def index?
    true
  end
end
