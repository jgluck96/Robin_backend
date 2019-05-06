class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :user_id, :item_id

  has_one :user
end
