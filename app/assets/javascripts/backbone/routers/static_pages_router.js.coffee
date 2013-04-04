class Skara.Routers.StaticPagesRouter extends Backbone.Router

  initialize: (options) ->
    @static_pages = new Skara.Collections.StaticPagesCollection()
    @static_pages.reset options.static_pages
  
  routes:
    ":title" : "show"
    
  show: (title) ->
    static_page = @static_pages.get(title)
    alert static_page
    @view = new Skara.Views.StaticPagesShowView {collection: @static_pages}
    