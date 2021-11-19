class UsersController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_user, only: %i[show edit update destroy]

  def index
    if params.key?(:category)
      @category = Category.find_by_name(params[:category])
      @users = User.where(category: @category)
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:fullname, :mobile_no, :email, :password, :password_confirmation, :category_id)
  end
end
