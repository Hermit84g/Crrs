class UsersController < ApplicationController
#  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]


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
  
  def edit
    @user = User.find_by(params[:Uid])
  end

  def show
    @user = User.find_by(params[:Uid])
    @crs = @user.crs.paginate(page: params[:page])
    #debugger
  end

  def update
    @user = User.find(params[:id])
    if @user.update_atributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end 
  end 

  private
    def user_params
      params.require(:user).permit(:Name, :Uid, :password, :password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end
