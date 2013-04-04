class Skara.Models.StaticPage extends Backbone.Model
  paramRoot: 'static_page'
  defaults:
    title: null
   url: ->
     return "#{this.title}"
class Skara.Collections.StaticPagesCollection extends Backbone.Collection
  model: Skara.Models.StaticPage
  url: ->
    return this.document.url() + "/"
