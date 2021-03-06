class Api::V1::MagiclinksController < ApplicationController

	  #Magic link implementation
  def create
    user_email = params[:magiclink][:email]
    user = user_email.present? && User.find_by(email: user_email)
    if user
      UserMailer.new_session(user).deliver_now
      render json: {"Message": "Magic Link Sent"}, status: 200
    else
      render json: { errors: "No accounts found!" }, status: 422
    end
  end
end
