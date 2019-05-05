class AddCityStateUuidToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :city, :string
    add_column :items, :state, :string
  end
end
