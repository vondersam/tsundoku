class User < ApplicationRecord
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
  has_many :sold_transactions, class_name: "Transaction", foreign_key: "seller_id"
  has_many :received_transactions, class_name: "Transaction", foreign_key: "receiver_id"
end
