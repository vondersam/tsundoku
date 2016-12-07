class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # association for wishlist item
  has_many :wishlist_items, dependent: :destroy #ask margo for confirmation
  # association with physical books
  has_many :physical_books, dependent: :destroy
  has_many :sent_messages, class_name: "Message", foreign_key: "sender_id"
  has_many :received_messages, class_name: "Message", foreign_key: "recipient_id"
  has_many :sold_transactions, class_name: "Transaction", foreign_key: "seller_id"
  has_many :received_transactions, class_name: "Transaction", foreign_key: "receiver_id"

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates_presence_of :profile_pic_url
  # validates_integrity_of :profile_pic_url
  # validates_processing_of :profile_pic_url
  validates :street1, presence: true
  validates :postcode, presence: true
  validates :city, presence: true
  validates :country, presence: true

  # Uploader of pictures
  mount_uploader :profile_pic_url, AvatarUploader

  #retrieves last book from given user
  def last_book
    physical_books.last
  end

  def address
    [street1, street2, postcode, city, country].compact.join(', ')
  end
  geocoded_by :address # concatenation of variables: "street1", "street2", "postcode", "city", "country"

  after_validation :geocode, if: :address_changed?

  def address_changed?
    if street1_changed? || street2_changed? || postcode_changed? || city_changed? || country_changed?
      return true
    else
      return false
    end

  end

end
