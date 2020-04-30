class AddHotToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :hot, :boolean
  end
end
