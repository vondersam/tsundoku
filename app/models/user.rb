class User < ApplicationRecord
  # association for wishlist item
  has_many :wishlist_items, dependent: :destroy #ask margo for confirmation
  # association with physical books
  has_many :physical_books
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
  has_many :sold_transactions, class_name: "Transaction", foreign_key: "seller_id"
  has_many :received_transactions, class_name: "Transaction", foreign_key: "receiver_id"
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :profile_pic_url, presence: true
  validates :address, presence: true

end
