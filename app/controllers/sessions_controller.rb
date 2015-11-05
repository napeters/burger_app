class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email_address: params[:email_address])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to("/users")
    else
      flash.notice = ("Incorrect email address and/or password")
      redirect_to("/login")
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to("/users")
  end
end
