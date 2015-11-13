class CreateSections < ActiveRecord::Migration
 def change
    create_table :sections do |t|
      t.string :title,				null: false, default: ""
      t.integer :trek_id,			null: false, default: 0
      t.timestamps
    end

    add_index :sections, :trek_id
  end
end