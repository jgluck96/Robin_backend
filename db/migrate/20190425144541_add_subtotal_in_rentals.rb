class AddSubtotalInRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :subtotal, :integer, limit: 8
  end
end
