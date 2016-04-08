#
class User < ActiveRecord::Base
  include Authentication
  has_many :products
  has_many :orders
end
