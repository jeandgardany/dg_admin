class AddFilesToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :files, :json
  end
end
