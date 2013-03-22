class StaticPage < ActiveRecord::Base
  attr_accessible :body, :title, :order, :nav
  def self.oldest_to_new
    StaticPage.all(:order => 'created_at asc')
  end
  def self.ordering
    StaticPage.all(:order => 'order asc')
  end
  def pageimage
    StaticPage.all()
  end
end
