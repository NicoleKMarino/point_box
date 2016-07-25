class DropAndRecreateRewardUser < ActiveRecord::Migration
  def change
    drop_table :rewards_users

    create_table :rewards_users do |t|
      t.integer :user_id
     t.integer :reward_id
    end
  end 
end
