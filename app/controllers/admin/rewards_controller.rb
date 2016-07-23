class Admin::RewardsController < Admin::BaseController
  before_filter :current_user

  def new
    @reward= Reward.new
  end

  def create
    @reward= Reward.new(reward_params)
    if @reward.save
      flash[:notice]= "Reward Created"
      redirect_to rewards_path
    else
      flash[:error]= "Those are not valid inputs"
      render :new
    end
  end

  def destroy
     Reward.find(params[:id]).destroy
     redirect_to rewards_path
  end



private

  def reward_params
    params.require(:reward).permit(:item,:cost)
  end

end
