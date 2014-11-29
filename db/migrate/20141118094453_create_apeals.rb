class CreateApeals < ActiveRecord::Migration
  def change
    create_table :apeals do |t|
      t.string :who
      t.integer :user_id
      t.string :phone
      t.text :text
      t.text :result
      t.string :term
      t.string :street
      t.string :house
      t.string :korpus
      t.string :how
      t.boolean :finish, :default => false

      t.timestamps
    end
  end
end
