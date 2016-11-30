class CreatePhysicalBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_books do |t|
      t.string :status
      t.string :picture_url
      t.integer :price
      t.string :title
      t.string :author
      t.integer :isbn
      t.text :description
      t.string :cover_pic_url
      t.references :user, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
