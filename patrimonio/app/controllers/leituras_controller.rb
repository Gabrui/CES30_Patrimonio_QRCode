class LeiturasController < ApplicationController

  def index
    @leitura = Leitura.new
  end

  def create
    redirect_to leituras_path
  end

end
