class ImagesController < ApplicationController

  def index
    @imgs = Image.all
    render json: @imgs
  end

  def create
    @img = params[:photos].map { |url|  Image.create(url: url, item_id: params[:item_id])}
    render json: @img
  end

  private

  def img_params
    params.require(:image).permit(:url, :item_id)
  end

end
