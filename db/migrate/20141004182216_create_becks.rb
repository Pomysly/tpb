class CreateBecks < ActiveRecord::Migration
  def change
    create_table :becks do |t|
      t.date :date
      t.text :notes
      t.integer :value
      t.integer :user_id

      t.timestamps
    end
  end
end
