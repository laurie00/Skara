class Skara.Views.StaticPagesView extends Backbone.View
  template: JST["backbone/templates/static_page/static_page"]

  events:
    "click .next" : "next"

  tagName: "div"

  next: () ->
    this.remove()
    return false
    
  render: ->
    @$el.html(@template(@model.toJSON()))
    return this
