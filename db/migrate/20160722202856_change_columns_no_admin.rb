class ChangeColumnsNoAdmin < ActiveRecord::Migration
  def change
    remove_column :users, :admin_id
  end
end
