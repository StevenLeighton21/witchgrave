class FgpSoldierFields < ActiveRecord::Migration
  def change
  	  add_column :fgp_soldiers, :move, :integer
      add_column :fgp_soldiers, :fight, :string
      add_column :fgp_soldiers, :shoot, :string
      add_column :fgp_soldiers, :armour, :integer
      add_column :fgp_soldiers, :will, :string
      add_column :fgp_soldiers, :health, :integer
      add_column :fgp_soldiers, :cost, :integer
      add_column :fgp_soldiers, :notes, :text
  end
end
