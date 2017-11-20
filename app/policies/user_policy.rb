class UserPolicy < ApplicationPolicy

  # current_user == record
  # user = user

  def index?
    record.admin?
  end

  def show?
    record.admin? or user == record
  end

  def update?
    user == record
    #@current_user.admin?
  end

  def destroy?
    return false if record = user
    record.admin?
  end

end
