class StaticPage < ActiveRecord::Base
  attr_accessible :body, :title, :order, :nav
  def self.oldest_to_new
    StaticPage.all(:order => 'created_at asc')
  end
  def self.nav1
    StaticPage.where("nav = '1'", :order => "date")
  end
end
