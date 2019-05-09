class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :category, :value, :rental_price, :created_at, :updated_at, :city, :state, :lng, :lat, :title
  has_many :rentals
  has_many :own_items, include_nested_associations: true
  has_many :reviews, include_nested_associations: true
  has_many :images
  # def own_items
  #   ActiveModel::SerializableResource.new(object.own_items,  each_serializer: OwnItemSerializer)
  # end
end
