class NavCell < Cell::Rails

  def justifiedList
    @navpages = StaticPage.nav1
    render
  end
  
  def imageNav
    render
  end

end
