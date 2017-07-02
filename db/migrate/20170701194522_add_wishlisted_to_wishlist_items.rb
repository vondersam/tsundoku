class AddWishlistedToWishlistItems < ActiveRecord::Migration[5.0]
  def change
    add_column :wishlist_items, :wish_listed, :boolean, default: false
  end
end
