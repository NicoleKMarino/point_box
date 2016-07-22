class CreateRewardsUsers < ActiveRecord::Migration
  def change
    create_table :rewards_users do |t|
      t.integer :user_id
     t.integer :reward_id
    end
    add_index :rewards_users, [:reward_id, :user_id]
  end
end
