require 'bcrypt'
require 'pry'


class User < ActiveRecord::Base
  has_many :rewards_users, dependent: :destroy
  has_many :rewards, through: :rewards_users
  belongs_to :rewards_users
  
  validates :username, presence: true,
                     uniqueness: true
  has_secure_password

  enum role: ["default", "admin"]

  def buy_reward?(reward_id)
    reward_cost = Reward.find(reward_id.to_i).cost
    if points >= reward_cost
      subtract_points(reward_cost)
    end
  end

  def subtract_points(reward_cost)
    update_attributes(points:(points - reward_cost))
  end


end
