class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :speciality
      t.string :full_name
      t.string :adress
      t.string :phone_number

      t.timestamps
    end
  end
end
