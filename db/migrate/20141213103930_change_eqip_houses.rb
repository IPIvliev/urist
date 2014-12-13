class ChangeEqipHouses < ActiveRecord::Migration
  def change
  	change_column :equip_houses, :housenumber,  :string
  end
end
