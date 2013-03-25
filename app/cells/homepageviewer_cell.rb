class HomepageviewerCell < Cell::Rails

  def display
    @cellpages = StaticPage.oldest_to_new
    render
  end

end
