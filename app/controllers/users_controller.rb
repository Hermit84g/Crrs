class UsersController < ApplicationController
  def index
    @user = User.all
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "正常に登録されました。"
      redirect_to @user
    else
      render 'new'
    end
  end 
  def show
    @user = User.find_by(params[:Uid])
    @crs = @user.crs.paginate(page: params[:page])
    #debugger
  end

  def user_params
    params.require(:user).permit(:Name, :Uid, :password, :password_confirmation)
  end
end
