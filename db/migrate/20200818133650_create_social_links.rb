class CreateSocialLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :social_links do |t|
      t.string :site, null: false
      t.string :link, unique: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
