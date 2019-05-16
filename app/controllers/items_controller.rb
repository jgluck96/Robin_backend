class ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items, include: ['own_items', 'rentals', 'reviews.user', 'images']
  end

  def create
    @item = Item.create(item_params)
    render json: @item
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end


  private
  def item_params
    params.require(:item).permit(:title, :city, :state, :description, :location, :category, :value, :rental_price, :lat, :lng)
  end
end
