class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.string :status
      t.references :seller
      t.references :receiver
      t.references :physical_book, foreign_key: true

      t.timestamps
    end
  end
end
