class RemoveSubtotalInRentals < ActiveRecord::Migration[5.2]
  def change
    remove_column :rentals, :subtotal
  end
end
