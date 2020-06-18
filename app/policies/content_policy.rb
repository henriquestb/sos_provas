class ContentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    return true if record.order == 0
    user.bought_subjects.exists?(subject_id:record.subject_id)
  end
end
