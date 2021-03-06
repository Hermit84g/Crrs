class UsersController < ApplicationController
  before_action :logged_in_user, only: [:home, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]


  def index
    @user = User.all
    if logged_in?
      @cr = current_user.crs.build
      @feed_items= current_user.feed.paginate(page: params[:page])
    end
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
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @crs = @user.crs.paginate(page: params[:page])
    #debugger
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end 
  end 

  private
    def user_params
      params.require(:user).permit(:Name, :Uid, :division_id, :ext, :password, :password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

end
