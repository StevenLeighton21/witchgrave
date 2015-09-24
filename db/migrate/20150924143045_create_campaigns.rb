class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :creator_id
      t.string :name
      t.text :description
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
