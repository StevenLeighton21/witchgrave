class SaleCost < ActiveRecord::Migration
  def change
  	add_column :fgp_items, :sale_price, :integer
  end
end
