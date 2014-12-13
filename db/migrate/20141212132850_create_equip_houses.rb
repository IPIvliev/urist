class CreateEquipHouses < ActiveRecord::Migration
  def change
    create_table :equip_houses do |t|
      t.string :name
      t.string :equipname
      t.integer :idequip
      t.string :street
      t.integer :housenumber

      t.timestamps
    end
  end
end
