class UserSession < Authlogic::Session::Base
  def self.oauth_consumer
    OAuth::Consumer.new(ENV['OAUTH_KEY'], ENV['OAUTH_SECRET'],
    { :site=>"http://twitter.com",
      :authorize_url => "http://twitter.com/oauth/authenticate" })
  end
end