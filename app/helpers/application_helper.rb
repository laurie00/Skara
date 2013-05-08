module ApplicationHelper
  def full_title(page_title)
    base_title = "Skara"
    if page_title.empty?
      base_title + " concepts"
    else
      "#{base_title} #{page_title}"
    end
  end
  require 'will_paginate/array'
end
