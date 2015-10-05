class CreateDefaultSpells < ActiveRecord::Migration
  def change
    create_table :default_spells do |t|
      t.string  :discipline
      t.string  :name
      t.integer :casting_value
      t.string  :range
      t.text    :description
      t.timestamps null: false
    end
  end
end
