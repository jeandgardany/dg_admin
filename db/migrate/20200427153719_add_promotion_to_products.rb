class AddPromotionToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :promotion, :integer, :default => 1
  end
end
