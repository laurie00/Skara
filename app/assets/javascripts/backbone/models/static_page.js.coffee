class Skara.Models.StaticPage extends Backbone.Model
  paramRoot: 'static_page'
  defaults:
    title: null

class Skara.Collections.StaticPagesCollection extends Backbone.Collection
  model: Skara.Models.StaticPage
  byTitle: (tit) ->
    @find (model) ->
      model.get("title") is tit.replace /\w\S*/g, (txt) ->
        txt.charAt(0).toUpperCase() + txt.substr(1).toLowerCase()
  url: ->
    "/"
