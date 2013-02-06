class ApplicationController < ActionController::Base
  protect_from_forgery


#ベーシック認証に関する記述
 before_filter :basic_auth

  private
  def basic_auth
      authenticate_or_request_with_http_basic('fuguais') do |p_user_id, p_pass|
        log = Userkanri.where(:user_id => p_user_id, :password => p_pass).first
        if log
             session[:user_id] = log.user_id
             session[:syozoku] = log.syozoku
             session[:shimei] = log.shimei
           return true
        end
      end
  end

end
