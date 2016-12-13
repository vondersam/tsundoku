class CreateWishlistItems < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlist_item do |t|
      t.references :physical_book, foreign_key: true

      t.timestamps
    end
  end
end
