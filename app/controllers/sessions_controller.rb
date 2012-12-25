class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user and User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to :controller => 'jobs', :action => 'index'
    else
      redirect_to login_url, :notice => "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Logged out"
  end
end
