class CreateStoreBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :store_books do |t|
      t.string :edition
      t.decimal :price, precision: 30, scale: 2
      t.boolean :is_available
      t.references :store, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
