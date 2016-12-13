class CreateWishlists < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlists do |t|
      t.references :user
      t.references :wishlist_item

      t.timestamps
    end
  end
end
