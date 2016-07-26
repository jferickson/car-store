class RemoveColumnsFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :car_id, :integer
  end
end
