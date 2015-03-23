class ItemsController < ApplicationController

  def index
    @items = Item.all
  end 

  def import
    Item.import(params[:file])
    redirect_to root_url, notice: "Items imported"
  end
end