class AddPriceAtToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :priceAT, :decimal
  end
end
