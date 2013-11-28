class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	@comics = Comic.all
  end
  
end
