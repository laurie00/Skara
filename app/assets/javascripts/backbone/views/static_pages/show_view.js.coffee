class Skara.Views.StaticPagesShowView extends Backbone.View
  
  el: '.widewidget'
  
  template: JST["backbone/templates/static_pages/show"]
  
  initialize: ->
    @render()
  
  render: ->
    @$el.html @template(@model.toJSON())
    @