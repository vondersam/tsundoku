class ConceptualBook < ApplicationRecord
  belongs_to :genre
  has_many :physical_books
  has_many :wishlist_item
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true, uniqueness: true, numericality: true
  validates :description, presence: true
  validates :cover_picture_url, presence: true
end
