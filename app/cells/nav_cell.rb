class NavCell < Cell::Rails
  
  def justifiedList
    @navpages = StaticPage.nav1
    render
  end
  
  def imageNav
    @navpages2 = StaticPage.nav2.each { |img|
      img["image"] = image_grab(img)
    }
    render
  end

end
