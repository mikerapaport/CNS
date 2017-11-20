class ChildPolicy < ApplicationPolicy

  def index?
    user == resource
  end

  def show?
    user == resource
  end

  def new?
    user == resource
  end

  def update?
    user == resource
  end

  def edit?
    user == resource
  end

  def destroy?
    user == resource
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
