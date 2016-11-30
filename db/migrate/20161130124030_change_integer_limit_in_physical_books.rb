class ChangeIntegerLimitInPhysicalBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :physical_books, :isbn, :integer, limit: 8
  end
end
