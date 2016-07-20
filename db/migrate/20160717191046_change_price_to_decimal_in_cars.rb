class ChangePriceToDecimalInCars < ActiveRecord::Migration
  def change
    change_column :cars, :price, "numeric USING CAST(price AS numeric)"
    change_column :cars, :price, :decimal, precision: 9, scale: 2
  end
end
