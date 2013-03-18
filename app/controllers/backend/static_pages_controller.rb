class Backend::StaticPagesController < Backend::ResourceController
  def render_page
    render "backend/static_pages/#{params[:request_path].underscore}"
  end
end
