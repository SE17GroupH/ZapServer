class UserMailer < ApplicationMailer
  default from: "zapse17@gmail.com"

  def new_session(user)
    @user = user
    logger.debug user.email
    mail to: user.email, subject: "Your Magic Link to Log In"
  end
end
