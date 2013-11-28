class Comic < ActiveRecord::Base
  attr_accessible :description, :name, :price, :publisher, :stock_quanitity, :url, :condition

  has_many :comic_orders
end
