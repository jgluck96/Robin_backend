class CreateOwnItems < ActiveRecord::Migration[5.2]
  def change
    create_table :own_items do |t|
      t.integer :user_id
      t.integer :item_id

      t.timestamps
    end
  end
end
