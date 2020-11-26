class JourneyPolicy < ApplicationPolicy

  def new?
    record.user == user
  end

  def create?
  record.user == user
  end



  class Scope < Scope
    def resolve
      if record.user == user
      scope.all
      end
    end
  end
end
