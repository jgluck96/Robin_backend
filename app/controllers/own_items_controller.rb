class OwnItemsController < ApplicationController
  def index
    @own_items = OwnItem.all
    render json: @own_items
  end

  def create
    @own_item = OwnItem.create(own_item_params)
    render json: @own_item
  end


  private
  def own_item_params
    params.require(:own_item).permit(:user_id, :item_id)
  end
end
