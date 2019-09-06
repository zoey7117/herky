class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.boolean :elevator
      t.integer :num_floors
      t.string :address
      t.string :pets

      t.timestamps
    end
  end
end
