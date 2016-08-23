namespace :daily do
  task :notification  => :environment do
    UserMailer.welcome_email.deliver!
  end
end