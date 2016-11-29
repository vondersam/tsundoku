class CreatePhysicalBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_books do |t|
      t.string :status
      t.string :picture_url
      t.integer :price
      t.references :user, foreign_key: true
      t.references :conceptual_book, foreign_key: true

      t.timestamps
    end
  end
end
