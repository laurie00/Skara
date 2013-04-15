#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers
window.Skara =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  redirectHashBang: ->
    window.location = window.location.hash.substring(2)

# DOM is ready, are we routing a #!?
$ ->
  if window.location.hash.indexOf('!') > -1
    return Skara.redirectHashBang()
    
$(document).on "click", "a[href^='/']", (event) ->
  
  href = $(event.currentTarget).attr('href')
  
  # chain 'or's for other black list routes
  passThrough = $(event.currentTarget).attr('class') == "pass" ? false : true
  
  # Allow shift+click for new tabs, etc.
  if !passThrough && !event.altKey && !event.ctrlKey && !event.metaKey && !event.shiftKey
    
    event.preventDefault()
    
    # Remove leading slashes and hash bangs (backward compatablility)
    url = href.replace(/^\//,'').replace('\#\!\/','')
    
    # Instruct Backbone to trigger routing events
    window.router.navigate url, { trigger: true }
    return false
    
