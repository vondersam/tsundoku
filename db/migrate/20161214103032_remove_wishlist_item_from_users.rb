class RemoveWishlistItemFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :wishlists, :wishlist_item_id, :integer
  end
end
