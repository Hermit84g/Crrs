class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(Uid: params[:session][:Uid])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid userID/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end