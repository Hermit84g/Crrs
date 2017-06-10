class CrsController < ApplicationController
  before_action :logged_in_user
  def new
    @cr=Cr.new
    @rselect = Rselect.all
  end
  def create
    @crs = current_user.crs.build(cr_params)
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
    def cr_params
      params.require(:cr).permit(:Name, :division, :ext, :Accused, :cr_year, :cr_type, :cr_term, :cr_no)
    end
end
