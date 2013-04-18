class Backend::ResourceController < Backend::ApplicationController
  inherit_resources
  has_scope :page, :default => 1
  respond_to :html
  self.responder = Backend::Responder
  def collection
    get_collection_ivar || set_collection_ivar(end_of_association_chain.paginate(:page => params[:page], :per_page => 9))
  end
end
