class AddYoutubeToProducts < ActiveRecord::Migration
  def change
    add_column :products, :youtube, :string
  end
end
