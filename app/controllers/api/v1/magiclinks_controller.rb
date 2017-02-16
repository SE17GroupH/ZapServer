class MagiclinksController < ApplicationController

	  #Magic link implementation
  def magiclink
    user_email = params[:session][:email]
    user = user_email.present? && User.find_by(email: user_email)
    if user 
      UserMailer.new_session(user)
      render json: user, status: 200, location: [:api, user]
    else
      render json: { errors: "No accounts found!" }, status: 422
    end
  end
end
