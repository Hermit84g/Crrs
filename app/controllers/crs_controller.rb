class CrsController < ApplicationController
  before_action :logged_in_user
  def create
    @crs = current_user.crs.build(crs_params)
    if @crs.save
      flash[:success] = "record submit"
      redirect_to root_url
    else
      render 'users/show'
    end
  end

  def destroy
  end

  private
    def crs_params
      params.require(:crs).permit(:Accused)
    end
end
