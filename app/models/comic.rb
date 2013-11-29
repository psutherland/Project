class Comic < ActiveRecord::Base
  attr_accessible :description, :name, :price, :publisher, :stock_quantity, :url

  has_many :comic_orders
end
