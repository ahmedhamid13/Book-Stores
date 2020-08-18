class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :country, default: "Egypt"
      t.string :city
      t.string :region
      t.string :street
      t.boolean :is_main, default: false
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
