require 'net/http'
require "rubygems"
require "json"
class Api::V1::UsersController < ApplicationController
  before_action :authenticate_with_token!, only: [:update, :destroy]
	respond_to :json

	def show
		respond_with User.find(params[:id])
	end

	def create
    	user = User.new(user_params)
    	if user.save
      		render json: user, status: 201, location: [:api, user]
    	else
      		render json: { errors: user.errors }, status: 422
    	end
  	end

  	def update
  		user = current_user
  		if user.update(user_params)
    		render json: user, status: 200, location: [:api, user]
  		else
    		render json: { errors: user.errors }, status: 422
  		end
	end

	def destroy
    current_user.destroy
    head 204
  end

  def enrollment(email)
    uri = URI('https://westus.api.cognitive.microsoft.com/spid/v1.0/verificationProfiles')
    uri.query = URI.encode_www_form({
      })
    request = Net::HTTP::Post.new(uri.request_uri)
    # Request headers
    request['Content-Type'] = 'application/json'
    # Request headers
    request['Ocp-Apim-Subscription-Key'] = '{a64d481d50294e91b2b227ea2b3f0e10}'
    # Request body
    request.body = "{body}"

    response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
      http.request(request)
    end
    puts response.body
    parsed = JSON.parse(response.body)
    identificationProfileId = parsed["identificationProfileId"]
  end


  	private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :identificationProfileId)
    end

end
