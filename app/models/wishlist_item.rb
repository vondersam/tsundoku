class WishlistItem < ApplicationRecord
  belongs_to :user
  belongs_to :conceptual_book
end
