class RenameProductIdCarId < ActiveRecord::Migration
  def change
    rename_column :orders, :product_id, :car_id
  end
end
