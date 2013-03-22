class NavCell < Cell::Rails

  def justifiedList
    @cellpages = StaticPage.oldest_to_new
    render
  end
  
  def imageNav
    render
  end

end
