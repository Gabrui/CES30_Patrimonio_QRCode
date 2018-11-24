class ImpressoesController < ApplicationController

  def index
    @itens = Item.all
  end

  def imprimir
    @itens = Item.where(id: criar_params)
    imprimir_lista(@itens)
  end

  def imprimir_lista(itens)
    @qr_code_strings = Array.new(itens.length)
    @qrs = Array.new(itens.length)
    @svgs = Array.new(itens.length)
    i=0
    itens.each do |item|
      @qr_code_strings[i] = '%d,%0.9s,%0.9s,%0.15s' % [item.silom.bmp, item.usuario.nome, item.local.nome, item.nome]
      @qrs[i] = RQRCode::QRCode.new(@qr_code_strings[i])
      @svgs[i] = @qrs[i].as_svg(offset: 0, color: '000', 
                      shape_rendering: 'crispEdges', 
                      module_size: 11)
      i+=1
    end
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

    def criar_params
      lista_texto = params.require(:itens)
      lista_texto.split(',').each.map(&:to_i)
    end

end
