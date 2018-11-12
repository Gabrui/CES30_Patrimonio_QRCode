class ImpressoesController < ApplicationController

  def index
    @itens = Item.all
  end

  def imprimir
    @item = Item.all[0]
    @qr_code_string = '%d,%0.9s,%0.9s,%0.15s' % [@item.silom.bmp, @item.usuario.nome, @item.local.nome, @item.nome]
    @qr = RQRCode::QRCode.new(@qr_code_string)
    @svg = @qr.as_svg(offset: 0, color: '000', 
                    shape_rendering: 'crispEdges', 
                    module_size: 11)
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "file_name",   # Excluding ".pdf" extension.
          template: "impressoes/imprimir.html.erb",
          layout: 'pdf.html'
      end
    end
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
