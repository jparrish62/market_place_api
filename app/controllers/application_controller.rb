require "application_responder"

class ApplicationController < ActionController::Base
	include ActionController::ImplicitRender
  self.responder = ApplicationResponder
  respond_to :html
  protect_from_forgery with: :null_session
end
