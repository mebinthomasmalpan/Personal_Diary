class UserMailer < ActionMailer::Base
  default :from => "rptest47@gmail.com"
 
  def welcome_email(user)
    mail(:to => user.email, :subject => "Today's Diary Entry")
  end
end