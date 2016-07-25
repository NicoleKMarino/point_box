class Reward < ActiveRecord::Base
  has_many :rewards_users, dependent: :destroy
  has_many :users, through: :rewards_users
end
