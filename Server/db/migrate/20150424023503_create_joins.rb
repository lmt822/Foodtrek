class CreateJoins < ActiveRecord::Migration
  def change
    create_table :joins do |t|
      t.integer :user_id
      t.integer :trek_id
      t.timestamps
    end

    add_index :joins, [:user_id, :trek_id]
    add_index :joins, :trek_id
  end
end