class SummonedSoldiers < ActiveRecord::Migration
  def change
    add_column :soldiers, :status, :string
  end

 
end
