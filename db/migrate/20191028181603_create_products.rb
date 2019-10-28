class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :code
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false
      t.string :photo
      t.string :status
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
