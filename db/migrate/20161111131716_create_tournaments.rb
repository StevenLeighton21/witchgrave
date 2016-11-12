class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string  :name
      t.integer :organiser_id
      t.integer :num_rounds

      t.timestamps null: false
    end
  end
end
