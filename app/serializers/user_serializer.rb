class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :mobile, :bio, :password, :location, :img, :age, :funds
  has_many :rentals
  has_many :own_items
  has_many :items, through: :own_items
  has_many :reviews

end
