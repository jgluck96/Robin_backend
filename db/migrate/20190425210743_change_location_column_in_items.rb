class ChangeLocationColumnInItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :location
  end
end
