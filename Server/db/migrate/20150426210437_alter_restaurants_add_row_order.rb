class AlterRestaurantsAddRowOrder < ActiveRecord::Migration
  def change
  	add_column 	:restaurants, :row_order, :integer, null: false
    add_index 	:restaurants, :row_order
  end
end
