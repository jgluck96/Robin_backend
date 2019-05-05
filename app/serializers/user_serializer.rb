class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mobile, :bio, :password, :location, :age, :funds
  has_many :rentals
  has_many :own_items
end
