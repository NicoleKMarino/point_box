class RewardsUser < ActiveRecord::Base
  has_many :rewards
  belongs_to :users
end
