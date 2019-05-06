class User < ApplicationRecord
  has_many :rentals
  has_many :items, through: :rentals

  has_many :own_items
  has_many :items, through: :own_items

  has_many :requests
  has_many :reviews
  # has_many :notifications
  # has_one :notification_feed

  has_secure_password

end
