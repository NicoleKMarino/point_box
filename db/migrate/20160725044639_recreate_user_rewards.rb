class RecreateUserRewards < ActiveRecord::Migration
  def change
    drop_table :rewards_users
    create_table :rewards_users do |t|
    t.references :user, index: true, foreign_key: true
    t.references :reward, index: true, foreign_key: true
end
  end
end
