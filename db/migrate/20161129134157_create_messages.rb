class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.references :sender
      t.references :recipient

      t.timestamps
    end
  end
end
