class UsersController < ApplicationController
  User.set_callback(:save, :after)
  def new
    @user = User.new
  end
    
  def create
    @user = User.new(user_params)
    if 
      @user.save
      redirect_to login_path
    else
      render :new
    end
  end
    
  private
    
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
