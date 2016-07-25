class Admin::UsersController < Admin::BaseController
  before_filter :current_user

  def new
    @user= User.new
  end

  def create
    @user= User.new(user_params)
    if @user.save
      redirect_to admin_users_path
    else
      flash[:error]= "Those are not valid inputs"
      render :new
    end
  end

  def index
    @users= User.all
  end

  def destroy
    @user=User.find(params[:id]).destroy
    redirect_to admin_users_path
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
    redirect_to admin_users_path
  end



  private

    def user_params
      params.require(:user).permit(:username,:points)
    end

end
