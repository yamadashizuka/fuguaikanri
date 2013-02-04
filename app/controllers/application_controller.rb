class ApplicationController < ActionController::Base
  protect_from_forgery


#ベーシック認証に関する記述
# before_filter :basic_auth
#
#  private
#  def basic_auth
#      authenticate_or_request_with_http_basic('bugreport') do |params_name, params_pass|
#        @log = User.where(:name => params_name, :pass => params_pass).first
#        if @log
#           return true
#        end
#      end
#  end

end
