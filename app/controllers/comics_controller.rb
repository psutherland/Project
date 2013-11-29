class ComicsController < ApplicationController
  def index
  end

  def new
  end

  def show
  	@comic = Comic.find(params[:id])
  end

  def search_publisher
  	pub = params[:publisher].slice(0,1).capitalize + params[:publisher].slice(1..-1)
  	@comics = Comic.where(:publisher => pub)
  end

end
