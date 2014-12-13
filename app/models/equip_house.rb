class EquipHouse < ActiveRecord::Base
  attr_accessible :equipname, :housenumber, :idequip, :name, :street, :ctp

  has_many :equip_values, foreign_key: "equip_id", :primary_key => "idequip", class_name: "EquipValue"
end
