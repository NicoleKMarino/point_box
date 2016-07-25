require 'pry'

class RewardsUsersController < ApplicationController

  def create
    if current_user.buy_reward?(params[:reward_id])
      rewards_user = RewardsUser.new(user_id: current_user.id, reward_id: params[:reward_id])
      rewards_user.save
    else
      flash.now[:notice] = "Not enough points to complete this transaction"
    end
    redirect_to rewards_path
  end
end
