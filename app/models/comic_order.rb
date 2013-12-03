class ComicOrder < ActiveRecord::Base
  attr_accessible :comic_id, :order_id, :price, :quantity

  validates :price, :quantity, numericality: true
end
