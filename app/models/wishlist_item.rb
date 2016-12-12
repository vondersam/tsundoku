class WishlistItem < ApplicationRecord
  belongs_to :user
  belongs_to :physical_book
  belongs_to :wishlist
end
