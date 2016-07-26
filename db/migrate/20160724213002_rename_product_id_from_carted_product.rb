class RenameProductIdFromCartedProduct < ActiveRecord::Migration
  def change
    rename_column :carted_products, :product_id, :car_id
  end
end
