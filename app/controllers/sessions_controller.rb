class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If user exists and password is correct
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', notice: 'Welcome Back!'
    else
      redirect_to '/login', notice: 'Wrong username and/or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
