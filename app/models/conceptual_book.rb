class ConceptualBook < ApplicationRecord
  belongs_to :genre
  has_many :physical_books
  has_many :wishlist_items
  validates :title, presence: true
  validates :author, presence: true
  validates :isbn, presence: true, uniqueness: true, numericality: true, length: { maximum: 13 }
  validates :description, presence: true
end
