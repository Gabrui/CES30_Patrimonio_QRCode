class ApplicationPolicy
  attr_reader :usuario, :record

  def initialize(usuario, record)
    @usuario = usuario
    @record = record
  end

  class Scope
    attr_reader :usuario, :scope

    def initialize(usuario, scope)
      @usuario = usuario
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
