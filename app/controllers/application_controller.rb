class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	if session[:total].nil?
  		session[:total] = 0
  	end
  	if session[:cart].nil?
  		session[:cart] = []
  	end

  	@comics = Comic.order("name")
  end

  def search
  	@comics = Comic.where("name LIKE '%#{params[:keywords]}%' OR publisher LIKE '%#{params[:keywords]}%'")
  end

  def cart
  	@comics = session[:cart]
  end
  
end
