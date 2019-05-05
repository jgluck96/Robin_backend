class RequestsController < ApplicationController
  def index
    @requests = Request.all
    render json: @requests
  end

  def create
    @request = Request.create(request_params)
    # inbox = NotificationFeed.find(params[:name]["inbox_id"])
    # InboxChannel.broadcast_to(inbox, request)
    # render json: { message: MessageSerializer.new(message) }, status: :accepted
    # container = Container.find(params[:container_id])
    # ContainerChannel.broadcast_to(container, @request)
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
    params.require(:request).permit(:requester_id, :receiver_id, :item_id, :accepted, :subtotal, :date_start, :date_start_server, :date_end_server, :date_end, :days_rented, :service_fee, :total_price)
  end

end
