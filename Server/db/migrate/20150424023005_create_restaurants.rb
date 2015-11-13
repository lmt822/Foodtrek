class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table  :restaurants do |t|
      t.text    :name,                  null: false, default: ""
      t.integer   :section_id             
      t.text    :description,           null: false, default: ""
      t.text    :locu_id
      
      #TODO: add review score.

      t.timestamps 
      # t.string :address //cannot add here, need new rails generate
    end

    add_index :restaurants, :section_id
  end
end