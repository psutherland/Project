class CheckoutController < ApplicationController
  def index
  	@total = session[:total]
  	@items = session[:cart]
  	@customer = Customer.new
  	@provinces = Province.all
  end

  def calculate
  end
end
