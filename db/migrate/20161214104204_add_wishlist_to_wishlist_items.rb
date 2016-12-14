class AddWishlistToWishlistItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :wishlist_item, :wishlist, foreign_key: true
  end
end
