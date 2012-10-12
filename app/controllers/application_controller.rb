class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :search_engine?

  def search_engine?
    request.env["HTTP_USER_AGENT"].match(/\(.*https?:\/\/.*\)/)
  end

end
