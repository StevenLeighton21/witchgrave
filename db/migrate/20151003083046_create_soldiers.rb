class CreateSoldiers < ActiveRecord::Migration
  def change
    create_table :soldiers do |t|
      t.string  :type
      t.integer :move
      t.string  :fight
      t.string  :shoot
      t.integer :armour
      t.string  :will
      t.integer :health
      t.integer :cost
      t.text    :notes
      t.timestamps null: false
    end
  end
end
