class Skara.Routers.StaticPagesRouter extends Backbone.Router

  initialize: (options) ->
    @static_pages = new Skara.Collections.StaticPagesCollection()
    @static_pages.reset options.static_pages
  
  routes:
    ":title" : "show"
    "": "home"
    
  show: (title) ->
    page = @static_pages.byTitle(title)
    @view = new Skara.Views.StaticPagesShowView {model: page}
    
  home: ->
    @view = new Skara.Views.StaticPagesHomeView