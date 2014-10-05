class CreateSchemas < ActiveRecord::Migration
  def change
    create_table :schemas do |t|
      t.string :name
      t.text :initiator
      t.text :emotions
      t.text :thoughts
      t.text :behaviour
      t.text :my_schema
      t.text :h_thought
      t.text :r_worry
      t.text :o_reaction
      t.text :h_behaviour
      t.string :belief

      t.timestamps
    end
  end
end
