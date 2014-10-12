class AddProsAndConsToSchema < ActiveRecord::Migration
  def change
    add_column :schemas, :pros, :text
    add_column :schemas, :cons, :text
  end
end
