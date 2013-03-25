class ViewerController < ApplicationController
  def show
    @page = StaticPage.find_by_title(params[:title])
    @title = @page.title.to_s
  end
end
