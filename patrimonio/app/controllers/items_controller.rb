class ItemsController < ApplicationController

  def show
    @itens = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
      if @item.save
        session[:item_id] = @item.id
        redirect_to root_url
    end
  end 

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
      if @item.update(item_params)
        redirect_to @item
      else
        render 'edit'
      end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_url
  end 


  private

  def item_params
    params.require(:item).permit(:descricao, :silom, :usuario, :local)
  end

end
