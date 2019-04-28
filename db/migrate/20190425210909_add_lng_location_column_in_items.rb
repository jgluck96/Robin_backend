class AddLngLocationColumnInItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :lng, :float
    add_column :items, :lat, :float
  end
end
