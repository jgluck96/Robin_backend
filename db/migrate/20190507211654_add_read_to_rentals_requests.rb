class AddReadToRentalsRequests < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :read, :boolean
    add_column :rentals, :read, :boolean
  end
end
