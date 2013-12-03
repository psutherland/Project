class Comic < ActiveRecord::Base
  attr_accessible :description, :name, :price, :publisher, :stock_quantity, :url

  validates :description, :name, :price, :publisher, :stock_quantity, presence: true
  validates :price, :stock_quantity, numericality: true

  has_many :comic_orders
end
