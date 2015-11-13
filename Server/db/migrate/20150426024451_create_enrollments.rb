class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.integer :trek_id
      t.timestamps
    end

    add_index :enrollments, [:user_id, :trek_id]
    add_index :enrollments, :trek_id
  end
end
