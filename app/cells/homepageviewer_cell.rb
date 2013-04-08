class HomepageviewerCell < Cell::Rails

  def display
    @cellpages = StaticPage.oldest_to_new
    @static_pages = StaticPage.nav2
    @static_pages.each_with_index { |img, i|
      img["image"] = image_grab(img)
      img.body = img.body.gsub(/<img([^<>]*)\/>/, '')
      next_value = @static_pages[i+1].blank? ? 0 : @static_pages[i+1].title.downcase
      img["nextlink"] = next_value
    }
    render
  end

end
