class PhysicalBook < ApplicationRecord
  belongs_to :user
  has_many :transactions
  validates :status, presence: true
  # validates :picture_url, presence: true
  validates :price, presence: true
end
