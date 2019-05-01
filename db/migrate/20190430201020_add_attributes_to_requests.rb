class AddAttributesToRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :subtotal, :integer, limit: 8
    add_column :requests, :date_start, :string
    add_column :requests, :date_end, :string
    add_column :requests, :days_rented, :integer
    add_column :requests, :service_fee, :float
    add_column :requests, :total_price, :float
  end
end
