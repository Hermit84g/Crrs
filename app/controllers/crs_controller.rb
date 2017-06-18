class CrsController < ApplicationController
  before_action :logged_in_user
  def new
    @cr=Cr.new
    @rselect = Rselect.all
  end

  def create
    @crs = current_user.crs.build(cr_params) if logged_in?
    if @crs.save
      flash[:success] = "record submit"
      redirect_to root_url
    else
      @feed_items = []
      render 'users/show'
    end
  end

  def ctrl
    @cr = Cr.search(params[:search])
  end

  
  def edit
    @cr=Cr.find(params[:id])
  end

  def update
   @cr=Cr.find(params[:id])
   if @cr.update_attributes(officer_params)
     flash.notice = "正常に登録されました"
      redirect_to  ctrl_path
    else
      flash.notice ="probrem occured"
   end
  end

  def show
    @user=User.find_by(params[:Uid])  
    @cr = Cr.find_by(params[:user_id])
  end
    
  def destroy
  end

  private
    def cr_params
      params.require(:cr).permit(:status, :Name, :division, :ext, :Accused,:r_select_id,
                                 :cr_year, :cr_type, :cr_term, :cr_no, :order_r,
                                 :order_ka, :order_fu, :order_jd, :cnt_jd)
    end
    def officer_params
      params.require(:cr).permit(:officer, :Name, :status,:amount_ka,:amount_fu)
    end
end
