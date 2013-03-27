class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :description
      t.string :who_said_it
      t.integer :order_number
      t.date :relevant_date

      t.timestamps
    end
  end
end
