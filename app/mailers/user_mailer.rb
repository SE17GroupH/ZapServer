class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_session.subject

  #

  default from: "zapse17@gmail.com"


  def new_session(user)
    @user = user
    mail to: user.email, subject: "Your Magic Link to Log In"
  end
end
