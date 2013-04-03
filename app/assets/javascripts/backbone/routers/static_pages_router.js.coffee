class Skara.Routers.StaticPagesRouter extends Backbone.Router

  initialize: (options) ->
    @static_pages = new Skara.Collections.StaticPagesCollection()
    @static_pages.reset options.static_pages
    static_page = new Skara.Models.StaticPage
  
  routes:
    ":title" : "show"
    
  show: (title) ->
    static_page = @static_pages.get("#{title}")
    @view = new Skara.Views.StaticPagesShowView {collection: @static_pages}
    