class EstadoPolicy < ApplicationPolicy

  def new?
     usuario.admin?
  end
 
  def create?
     usuario.admin?
  end

  def edit?
     usuario.admin?
  end

  def update?
     usuario.admin?
  end

  def destroy?
     usuario.admin
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
