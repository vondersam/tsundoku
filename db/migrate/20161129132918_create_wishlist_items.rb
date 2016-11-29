class CreateWishlistItems < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlist_items do |t|
      t.references :user, foreign_key: true
      t.references :conceptual_book, foreign_key: true

      t.timestamps
    end
  end
end
