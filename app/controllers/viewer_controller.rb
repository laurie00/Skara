class ViewerController < ApplicationController
  def show
    @page = StaticPage.find_by_title(params[:title])
    @title = @page.title.to_s
    @regexp = /= render_cell\(:([^<>]*), :([^<>]*)\)/
    @rubes = @page.body.scan(@regexp).flatten
    @page.body = @page.body.gsub(@regexp, "")
  end
end
