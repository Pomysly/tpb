class AddBreedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :breed, :string
  end
end
