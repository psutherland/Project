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

  def search_price
    if params[:price] = "less than 10" then
      search_string = "price < 10"
    end
    @comics = Comic.where(search_string)
  end

end
