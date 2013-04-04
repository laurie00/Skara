class Skara.Views.StaticPagesShowView extends Backbone.View

  el: '.content'

  template: JST["backbone/templates/static_pages/show"]

  initialize: ->
    @render()
    @addAll()

  addAll: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->
    @view = new Skara.Views.StaticPagesView({model: model})
    @$el.find('.midwidget').append @view.render().el
    @console.log "fart"

  render: ->
    @$el.html @template()
    console.log @template()
    @
