class AddBookIdToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :book_id, :integer
  end
end
