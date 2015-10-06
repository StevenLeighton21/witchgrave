class CreateFgpSoldiers < ActiveRecord::Migration
  def change
    create_table :fgp_soldiers do |t|
      t.references :frost_grave_participant, index: true, foreign_key: true
      t.string     :name
      t.string     :class
      t.string     :item
      t.timestamps null: false
    end
  end
end
