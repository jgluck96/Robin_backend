class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mobile, :password, :location, :age
  has_many :rentals
  has_many :own_items
end
