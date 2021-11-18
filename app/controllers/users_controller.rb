class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    redirect_to users_path if @user.save
  end

  private

  def user_params
    params.require(:user).permit(:fullname, :mobile_no, :email, :password, :password_confirmation)
  end
end
