class Backend::ResourceController < Backend::ApplicationController
  inherit_resources
  has_scope :page, :default => 1
  respond_to :html
  self.responder = Backend::Responder
end
