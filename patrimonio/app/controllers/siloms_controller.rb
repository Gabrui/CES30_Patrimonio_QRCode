class SilomsController < ApplicationController
  def index
    @siloms = Silom.all
  end

  def import
    Silom.import(params[:file])
    #after the import, redirect and tell us the method worked!
    redirect_to root_url, notice: "Dados Importados!"
  end
end
