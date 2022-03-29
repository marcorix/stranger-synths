class CreateSynths < ActiveRecord::Migration[6.1]
  def change
    create_table :synths do |t|
      t.string :name
      t.string :brand
      t.integer :price
      t.string :category
      t.string :conditions
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
