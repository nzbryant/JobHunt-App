class SessionsController < ApplicationController

  # POST /sessions/create
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user), notice: "Welcome back #{user.name}"
    else
      flash[:error] = "Wrong Username or Password."
      redirect_to login_url
    end
  end

  # GET /sessions/destroy
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Bye, we hope to see you again soon."
  end

end
