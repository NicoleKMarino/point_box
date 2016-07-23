class Admin::UsersController < Admin::BaseController
  before_filter :current_user

  def index
    @users= User.all
  end

  def destroy
    @user=User.find(params[:id]).destroy
    redirect_to admin_users_path
  end


end
