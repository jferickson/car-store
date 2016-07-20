class ChangePriceToDecimalInCarsWithPrecision < ActiveRecord::Migration
  def change
    change_column :cars, :price, :decimal, precision: 9, scale: 2
    change_column :cars, :description, :text
  end
end
