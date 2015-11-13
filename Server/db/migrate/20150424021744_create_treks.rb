class CreateTreks < ActiveRecord::Migration
  def change
    # Wanxin: added null: false, 4.28
    create_table :treks do |t|
      t.string 	:title,			null: false, default: ""
      t.text 	:description,	null: false, default: ""
      t.integer :user_id,		null: false, default: 0
      t.timestamps
    end

    add_index :treks, :user_id
  end
end