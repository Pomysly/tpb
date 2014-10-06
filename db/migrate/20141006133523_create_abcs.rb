class CreateAbcs < ActiveRecord::Migration
  def change
    create_table :abcs do |t|
      t.text :aut_thought
      t.text :mistake
      t.text :adapt_thought
      t.integer :user_id

      t.timestamps
    end
  end
end
