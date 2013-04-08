require "application_responder"
require "json"
class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  respond_to :json

  protect_from_forgery
  
end
