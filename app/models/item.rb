class Item < ApplicationRecord
  has_many :rentals
  has_many :users, through: :rentals

  has_many :own_items
  has_many :users, through: :own_items

  has_many :request

end
