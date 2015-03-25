class ItemsController < ApplicationController

  def index
    @items = Item.all
  end 

  def import
    Item.import(params[:file])
    redirect_to root_url, notice: "Items imported"
  end

  # private
  # def item_params
  #   params.require(:item).permit(:name, purchases: [ :item_id ])
  # end
end