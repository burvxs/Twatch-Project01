class UsersController < ApplicationController
  def edit
    @user = User.find params[:id]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create user_params
    if @user.persisted?  
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  def show
    @user = User.find params[:id]
  end

  private
  def user_params
    params.require(:user).permit :handle, :email, :password
  end
end
