class AddPriceAtToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :priceAT, :decimal, precision: 10, scale: 2
  end
end
