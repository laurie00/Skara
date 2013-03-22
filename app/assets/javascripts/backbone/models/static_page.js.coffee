class Skara.Models.Backend::StaticPage extends Backbone.Model
  paramRoot: 'backend_static_page'

class Skara.Collections.StaticPagesCollection extends Backbone.Collection
  model: Skara.Models.Backend::StaticPage
  url: '/backend/static_pages'
