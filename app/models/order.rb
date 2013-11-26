class Order < ActiveRecord::Base
  attr_accessible :customer_id, :gst_rate, :hst_rate, :id, :pst_rate, :status

  belongs_to :customer
  has_many :comic_orders
end
