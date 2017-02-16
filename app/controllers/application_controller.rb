class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  protect_from_forgery with: :null_session

  def record_not_found
  	render json: { errors: "Invalid email or password" }, status: 422
  end	
  include Authenticable
end
