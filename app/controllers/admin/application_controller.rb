# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class Admin::ApplicationController < ApplicationController
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  before_filter :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == (ENV['ADMIN_LOGIN'] || 'admin') && password == (ENV['ADMIN_PASSWORD'] || 'password')
    end
  end
end
