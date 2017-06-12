class StaticPagesController < ApplicationController
  def home
  	#@user = User.all
    if logged_in?
      @cr = current_user.crs.build
      @feed_items= current_user.feed.paginate(page: params[:page])
    end
  end


  def help
  end
end
