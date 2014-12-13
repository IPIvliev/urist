class CreateEquipValues < ActiveRecord::Migration
  def change
    create_table :equip_values do |t|
      t.integer :equip_id
      t.float :t1, :default => 0
      t.float :t2, :default => 0
      t.float :t3, :default => 0
      t.float :t4, :default => 0
      t.float :w1, :default => 0
      t.float :w2, :default => 0
      t.float :w3, :default => 0
      t.float :w4, :default => 0
      t.float :m1, :default => 0
      t.float :m2, :default => 0
      t.float :m3, :default => 0
      t.float :m4, :default => 0
      t.datetime :date

      t.timestamps
    end
  end
end
