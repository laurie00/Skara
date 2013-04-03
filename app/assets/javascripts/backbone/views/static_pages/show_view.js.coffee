class Skara.Views.StaticPagesShowView extends Backbone.View

  el: '.widewidget'

  template: JST["backbone/templates/static_pages/show"]

  initialize: ->
    @render()
    @addAll()

  addAll: ->
    @collection.forEach(@addOne, @)

  addOne: (model) ->
    @view = new Skara.Views.StaticPagesView({model: model})
    @$el.find('.midwidget').append @view.render().el

  render: ->
    @$el.html @template()
    @
