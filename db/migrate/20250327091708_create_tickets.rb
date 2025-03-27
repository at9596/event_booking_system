class CreateTickets < ActiveRecord::Migration[8.0]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.string :category, null: false
      t.decimal :price, precision: 10, scale: 2, null: false
      t.integer :availability

      t.timestamps
    end
  end
end
