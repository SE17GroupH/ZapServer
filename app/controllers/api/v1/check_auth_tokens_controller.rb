class Api::V1::CheckAuthTokensController < ApplicationController
	def create
		user_email = params[:authorization][:email]
		auth_token = params[:authorization][:auth_token]
		user = user_email.present? && User.find_by(email: user_email)
		if user and auth_token.eql?user.auth_token
			sign_in user, store: false
      		user.generate_authentication_token!
      		user.save
      		render json: user, status: 200, location: [:api, user]
      	else
      		render json: { errors: "Invalid authorization token" }, status: 422
    	end
	end
end
