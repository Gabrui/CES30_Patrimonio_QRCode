class LeiturasController < ApplicationController

  def index
    @leitura = Leitura.new
  end

  def create
    @leitura = Leitura.new(leitura_params)
    @leitura.usuario_id = current_usuario.id #Usuário que enviou
    lido = params[:leitura][:lido]
    siloms = Silom.where(siloms: {bmp: lido.split(',')[0].to_i})[0]
    if not siloms
      redirect_to leituras_path, alert: 'BMP não encontrado'
    else
      @leitura.item_id = siloms.item.id
      @leitura.dia = DateTime.now

      if @leitura.save
        redirect_to leituras_path, notice: 'Leitura recebida.'
      else
        redirect_to leituras_path, alert: 'Erro na leitura.'
      end
    end

  end
  
  private

    def leitura_params
      params.require(:leitura).permit(:local_id, :lido)
    end
end
