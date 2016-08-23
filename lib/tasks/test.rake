namespace :daily do
  task :notification  => :environment do
    User.all.each do | user |
      UserMailer.welcome_email(user).deliver!
    end
  end
end