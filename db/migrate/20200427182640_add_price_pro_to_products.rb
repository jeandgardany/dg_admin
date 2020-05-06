class AddPriceProToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :pricePRO, :decimal, precision: 10, scale: 2
  end
end
