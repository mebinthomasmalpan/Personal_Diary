class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.Notification.subject
  #
  def Notification()
    @greeting = "Hi"
    mail to: "sameesh.fisat@gmail.com"
  end
end
