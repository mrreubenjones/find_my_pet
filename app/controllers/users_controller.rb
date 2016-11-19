class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to home_path, notice: 'Thanks for signing up'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
end
