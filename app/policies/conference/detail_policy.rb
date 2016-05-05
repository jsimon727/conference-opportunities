class Conference::DetailPolicy < ApplicationPolicy
  def update?
    user.admin? || user.conference == record.conference
  end
end
