class ImpressaosController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @impressao = Impressao.new(impressao_params)
=begin
    respond_to do |format|
      if @impressao.save
        format.html { redirect_to @impressao, notice: 'Item criado com sucesso.' }
        format.json { render :show, status: :created, location: @impressao }
      else
        format.html { render :new }
        format.json { render json: @impressao.errors, status: :unprocessable_entity }
      end
    end
=end
  end

  private

    def impressao_params
      params.require(:impressao)
    end

end
