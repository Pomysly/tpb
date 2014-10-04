class AddUserIdToMoodentry < ActiveRecord::Migration
  def change
    add_column :moodentries, :user_id, :integer
  end
end
