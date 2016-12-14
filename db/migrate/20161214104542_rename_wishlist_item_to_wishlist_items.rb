class RenameWishlistItemToWishlistItems < ActiveRecord::Migration[5.0]
  def change
     rename_table :wishlist_item, :wishlist_items
  end
end
