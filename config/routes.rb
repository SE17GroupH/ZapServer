require 'api_constraints'

Rails.application.routes.draw do

  devise_for :users
	#API definition
	# namespace :api, defaults: { format: :json },
	# 							constraints: { subdomain: 'api' }, path: '/' do
	namespace :api, defaults: { format: :json }, path: '/api' do
		scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do

		# add resources here
		resources :users, :only => [:create, :update, :destroy]
		resources :sessions, :only => [:create, :destroy]
		resources :magiclinks, :only =>[:create]
		resources :check_auth_tokens, :only =>[:create]
		end


	end

end
