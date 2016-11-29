class CreateConceptualBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :conceptual_books do |t|
      t.string :title
      t.string :author
      t.integer :isbn
      t.text :description
      t.string :cover_picture_url
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
