class AddDateStartServerEndToRentalsReq < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :date_start_server, :string
    add_column :requests, :date_end_server, :string
    add_column :rentals, :date_start_server, :string
    add_column :rentals, :date_end_server, :string
  end
end
