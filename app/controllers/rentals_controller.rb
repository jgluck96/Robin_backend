class RentalsController < ApplicationController
  def index
    @rentals = Rental.all
    render json: @rentals
  end

  def create
    @rental = Rental.create(rental_params)
    render json: @rental
  end

  def update
    @rental = Rental.find(params[:id])
    @rental.update(rental_params)
    render json: @rental
  end

  private
  def rental_params
    params.require(:rental).permit(:user_id, :item_id, :date_start, :read, :date_end, :date_start_server, :status, :date_end_server, :days_rented, :subtotal, :service_fee, :total_price)
  end
end
