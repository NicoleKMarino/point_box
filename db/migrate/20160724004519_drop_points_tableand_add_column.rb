class DropPointsTableandAddColumn < ActiveRecord::Migration
  def change
    drop_table :points
    add_column :users, :points, :integer, :default => 0
    change_column_default :users, :role, 0
  end
end
