class Request < ApplicationRecord
  belongs_to :requester, class_name: 'User', :foreign_key => :requester_id
  belongs_to :receiver, class_name: 'User', :foreign_key => :receiver_id
  has_one :item
  # belongs_to :notifications_feed, optional: true
end
