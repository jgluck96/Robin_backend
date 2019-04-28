class ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.create(item_params)
    render json: @item
  end


  private
  def item_params
    params.require(:item).permit(:title, :description, :location, :category, :value, :rental_price, :lat, :lng)
  end
end
