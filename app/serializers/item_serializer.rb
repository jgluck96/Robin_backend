class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :value, :rental_price, :created_at, :updated_at, :city, :state, :lng, :lat, :title
  has_many :rentals
  has_many :own_items
  has_many :reviews, include_nested_associations: true

end
