class RequestSerializer < ActiveModel::Serializer
  attributes :id, :requester_id, :receiver_id, :accepted, :date_start_server, :date_end_server, :subtotal, :date_start, :date_end, :days_rented, :service_fee, :total_price, :item_id, :requester, :receiver

end
