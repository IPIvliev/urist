class EquipValue < ActiveRecord::Base
  attr_accessible :equip_id, :date, :m1, :m2, :m3, :m4, :t1, :t2, :t3, :t4, :w1, :w2, :w3, :w4

  belongs_to :equip_house, foreign_key: "idequip"
end
