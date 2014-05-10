class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  	private
		def current_caart
		Caart.find(session[:caart_id])
		rescue ActiveRecord::RecordNotFound
		caart = Caart.create
		session[:caart_id] = caart.id
		caart
	end
end
