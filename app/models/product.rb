class Product < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :widgets
  validates_presence_of :name
  def self.allprods
    Product.all
  end
end
