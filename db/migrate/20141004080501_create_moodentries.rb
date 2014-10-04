class CreateMoodentries < ActiveRecord::Migration
  def change
    create_table :moodentries do |t|
      t.date :date
      t.text :note
      t.integer :mood

      t.timestamps
    end
  end
end
