class DeleteColumnsJoin < ActiveRecord::Migration
  def change
    remove_column :rewards, :user_id
  end
end
