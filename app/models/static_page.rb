class StaticPage < ActiveRecord::Base
  attr_accessible :body, :title
  def self.oldest_to_new
    StaticPage.all(:order => 'created_at asc')
  end
  def pageimage
    
  end
end
