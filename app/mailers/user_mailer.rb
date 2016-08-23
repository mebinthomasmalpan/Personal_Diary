class UserMailer < ActionMailer::Base
  default :from => "rptest47@gmail.com"
 
  def welcome_email
    mail(:to => 'sameesh.fisat@gmail.com', :subject => "Welcome")
  end
end