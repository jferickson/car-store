class CreateCategoryCars < ActiveRecord::Migration
  def change
    create_table :category_cars do |t|
      t.integer :category_id
      t.integer :car_id

      t.timestamps null: false
    end
  end
end
