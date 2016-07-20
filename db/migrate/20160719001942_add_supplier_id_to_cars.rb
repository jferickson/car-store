class AddSupplierIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :supplier_id, :integer
  end
end
