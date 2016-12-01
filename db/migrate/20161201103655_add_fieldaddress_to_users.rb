class AddFieldaddressToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :address, :string
    add_column :users, :street1, :string
    add_column :users, :street2, :string
    add_column :users, :postbox, :string
    add_column :users, :postcode, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
