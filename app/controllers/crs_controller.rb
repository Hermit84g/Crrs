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
    @cr=Cr.all
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
end
