class AddCtpToEquipHouses < ActiveRecord::Migration
  def change
  	add_column :equip_houses, :ctp, :string
  end
end
