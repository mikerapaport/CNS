class ParentPolicy < ApplicationPolicy

  def show?
    user == record
  end

  def update?
    user == record
  end

  def edit?
    user == record
  end

  def create?
    user == record
  end



  class Scope < Scope
    def resolve
      scope
    end
  end
end
