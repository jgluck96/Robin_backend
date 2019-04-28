class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :value, :rental_price, :created_at, :updated_at, :lng, :lat, :title
end
