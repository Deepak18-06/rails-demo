class UsersController < ApplicationController

  def home
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path notice: "User Created Successfully"
    else
      render :new
    end
  end

  def signin
  end

  def authenticate
    email = user_params[:email]
    user = User.find_by(email: email)
    if user && user.password == user_params[:password]
      redirect_to users_home_path
    else
      flash[:alert] = "Invalid email/password combination"
      render :signin
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:email,:password)
  end
end
