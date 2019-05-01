class RentalSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :item_id, :date_start, :date_end, :days_rented, :subtotal, :service_fee, :total_price
  has_one :item
end