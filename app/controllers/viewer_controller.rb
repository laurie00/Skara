class ViewerController < ApplicationController
  def show
    @page = StaticPage.find_by_title(params[:title])
  end
end
