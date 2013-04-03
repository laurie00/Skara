class StaticPage < ActiveRecord::Base
  attr_accessible :body, :title, :order, :nav
  def self.oldest_to_new
    StaticPage.all(:order => 'created_at asc')
  end
  def self.nav1
    StaticPage.where("nav = '1'", :order => "order")
  end
  def self.nav2
    StaticPage.where("nav = '2'", :order => "order")
  end
  def self.by_title(title)
    StaticPage.where("title = title")
  end
end
def image_grab(pagehash)
  return "<img" + pagehash.body.scan(/<img([^<>]*)\/>/).flatten.join.gsub(/style=\"([^<>]*)\"/,'') + "/>"
end