class AddYoBToProducts < ActiveRecord::Migration
  def change
    add_column :products, :YoB, :integer
  end
end
