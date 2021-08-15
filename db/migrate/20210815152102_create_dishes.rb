class CreateDishes < ActiveRecord::Migration[6.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.integer :preptime
      t.string :description

      t.timestamps
    end
  end
end
