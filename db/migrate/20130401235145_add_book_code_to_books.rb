class AddBookCodeToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_code, :string
  end
end
