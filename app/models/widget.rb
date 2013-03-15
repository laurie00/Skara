class Widget < ActiveRecord::Base
  attr_accessible :product_id, :description, :name, :active
  belongs_to :product
end
