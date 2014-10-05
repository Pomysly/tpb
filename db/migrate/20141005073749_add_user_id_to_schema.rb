class AddUserIdToSchema < ActiveRecord::Migration
  def change
    add_column :schemas, :user_id, :integer
  end
end
