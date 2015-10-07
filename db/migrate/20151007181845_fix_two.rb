class FixTwo < ActiveRecord::Migration
  def change
  	add_column :fgp_soldiers, :class_name, :string
  	remove_column :fgp_soldiers, :type
  end
end
