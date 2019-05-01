class RequestsController < ApplicationController
  def index
    @requests = Request.all
    render json: @requests
  end

  def create
    @request = Request.create(request_params)
  end

  def show
    @request = Request.find(params[:id])
    render json: @request
  end

  def update
    @request = Request.find(params[:id])
    @request.update(request_params)
    render json: @request
  end

  private

  def request_params
    params.require(:request).permit(:requester_id, :receiver_id, :item_id, :accepted, :subtotal, :date_start, :date_end, :days_rented, :service_fee, :total_price)
  end

end
