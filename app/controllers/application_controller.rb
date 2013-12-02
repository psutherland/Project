class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	session[:total] = 0
  	session[:items] = 0
  	session[:cart] = []

  	@comics = Comic.order("name")
  end

  def search
  	@comics = Comic.where("name LIKE '%#{params[:keywords]}%' OR publisher LIKE '%#{params[:keywords]}%'")
  end

  def cart
  	@comics = session[:cart]
  end
  
end
