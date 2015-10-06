class CreateFgpItems < ActiveRecord::Migration
  def change
    create_table :fgp_items do |t|
      t.references :frost_grave_participant, index: true, foreign_key: true
      t.string     :name
      t.text	   :description
      t.integer    :cost
      t.boolean    :passive_effect
      t.string     :passive_effect_stat
      t.string     :passive_effect_value
      t.timestamps null: false
    end

  end
end
