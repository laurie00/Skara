class HomepageviewerCell < Cell::Rails

  def display
    @spages = StaticPage.oldest_to_new
    render
  end

end
