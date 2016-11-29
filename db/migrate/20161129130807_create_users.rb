class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :profile_pic_url
      t.string :email
      t.integer :phone_number
      t.integer :rating
      t.string :address

      t.timestamps
    end
  end
end
