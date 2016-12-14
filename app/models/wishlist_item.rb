class WishlistItem < ApplicationRecord
  belongs_to :physical_book
  belongs_to :wishlist
  # belongs_to :user, through: :wishlist #check with Martin
end
