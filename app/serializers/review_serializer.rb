class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :user_id, :item_id, :created_at

  has_one :user
end
