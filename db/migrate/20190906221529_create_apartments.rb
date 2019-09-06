class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :apt_num
      t.integer :size
      t.integer :num_rooms
      t.integer :num_windows
      t.integer :building_id

      t.timestamps
    end
  end
end
