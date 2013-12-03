class CheckoutController < ApplicationController
  def index
  	@total = session[:total]
  	@items = session[:cart]
  	@customer = Customer.new
  	@provinces = Province.all
  end

  def calculate
  	#@id = params[:province_id]
  	tax = 0.1
  	@total = session[:total]
  	@items = session[:cart]
  	@taxes = @total * tax
  end
end
