class OwnItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_id
  has_one :item
end
