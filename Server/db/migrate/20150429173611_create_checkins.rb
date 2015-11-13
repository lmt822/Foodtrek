class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
    	t.integer :user_id
    	t.integer :restaurant_id

      t.timestamps
    end

   add_index :checkins, [:user_id, :restaurant_id]
   add_index :checkins, :restaurant_id 
  end

end
