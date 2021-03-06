

class UsersController < ApplicationController
  helper_method :is_admin?


  def show
    @user= User.find(params[:id])
  end

  def new
    @user = User.new
    render :layout => false
  end

  def create
    @user= User.new(user_params)
    if @user.save
      flash[:notice]= "Success"
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error]= "Those are not valid inputs"
      render :new
    end
  end



private

  def user_params
    params.require(:user).permit(:username,:password,:role)
  end

end
