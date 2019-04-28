class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :description
      t.string :location
      t.string :category
      t.float :value
      t.integer :rental_price

      t.timestamps
    end
  end
end
