class RewardsController < ApplicationController
  before_filter :current_user

  def index
    @rewards= Reward.all
  end

end
