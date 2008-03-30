# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  before_filter :authenticate

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'd4b62eac63d117d61902c6f9debc19fd'



  private

  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password| 
      get_site
      user_name == @site.login && password == @site.password_encrypted
    end
  end
  

  def get_site
    @site = Site.find 1
  end


end
