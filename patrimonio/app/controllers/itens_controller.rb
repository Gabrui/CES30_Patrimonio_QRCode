class ItensController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /itens
  # GET /itens.json
  def index
    @itens = Item.all
    respond_to do |format|
      format.html
      format.csv { send_data @itens.to_csv, filename: "itens-#{Date.today}.csv" }
    end
  end

  # GET /itens/1
  # GET /itens/1.json
  def show
    @qr_code_string = '%d,%0.9s,%0.9s,%0.15s' % [@item.silom.bmp, @item.usuario.nome, @item.local.nome, @item.nome]
    @qr = RQRCode::QRCode.new(@qr_code_string)
  end

  # GET /itens/new
  def new
    @item = Item.new
    @siloms = siloms_livres
  end

  # GET /itens/1/edit
  def edit
  end

  # POST /itens
  # POST /itens.json
  def create
    @item = Item.new(item_params)
    @siloms = siloms_livres
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item criado com sucesso.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itens/1
  # PATCH/PUT /itens/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itens/1
  # DELETE /itens/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to itens_url, notice: 'Item apagado com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
      @siloms = siloms_livres
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:nome, :estado_id, :local_id, :silom_id, :usuario_id, :categoria_id)
    end

    def siloms_livres
      Silom.left_outer_joins(:item).where(itens: {id: nil}).select(:id,:nomeclatura).uniq{ |p| p.nomeclatura }.map { |m| [m.nomeclatura, m.id]}
    end
end
