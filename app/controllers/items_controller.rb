class ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items, include: ['own_items.user', 'rentals', 'reviews.user']
  end

  def create
    @item = Item.create(item_params)
    render json: @item
  end


  private
  def item_params
    params.require(:item).permit(:title, :city, :state, :description, :location, :category, :value, :rental_price, :lat, :lng)
  end
end
