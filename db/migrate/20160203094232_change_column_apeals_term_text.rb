class ChangeColumnApealsTermText < ActiveRecord::Migration
  def change
  	change_column :apeals, :term,  :text
  end
end
