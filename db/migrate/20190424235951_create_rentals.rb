class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.integer :item_id
      t.string :date_start
      t.string :date_end
      t.integer :days_rented
      t.string :subtotal
      t.float :service_fee
      t.float :total_price

      t.timestamps
    end
  end
end
