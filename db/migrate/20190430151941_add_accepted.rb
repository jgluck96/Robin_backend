class AddAccepted < ActiveRecord::Migration[5.2]
  def change
    add_column :requests, :accepted, :boolean
  end
end
