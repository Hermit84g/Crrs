module SessionsHelper
  def log_in(user)
    session[:Uid] = user.Uid
    #session[:Uid] = user.Uid

  end

  def log_out
    session.delete(:Uid)
    @current_user = nil
  end
  
  #渡されたユーザがログイン済みならtrue
  def current_user?(user)
    user == current_user
  end

  def current_user
    @current_user ||=User.find_by(Uid:session[:Uid])
  end

  def logged_in?
    !current_user.nil?
  end

    # 記憶したURL (もしくはデフォルト値) にリダイレクト
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # アクセスしようとしたURLを覚えておく
  def store_location
    session[:forwarding_url] = request.original_url if request.get?
  end

end
