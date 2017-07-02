class AddListedToPhysicalBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :physical_books, :listed, :boolean, default: false
  end
end
