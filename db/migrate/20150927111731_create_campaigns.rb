class Createcampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.integer :member

      t.timestamps null: false
    end
  end
end
