class AddImageToTreks < ActiveRecord::Migration
  def change
    add_column :treks, :image, :string
  end
end
