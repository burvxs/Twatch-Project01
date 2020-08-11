class SessionController < ApplicationController
  def create
    user = User.find_by handle: params[:handle]
  puts "User #{user}"
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_path
    else
      flash[:error] = "Invalid username or password"
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
