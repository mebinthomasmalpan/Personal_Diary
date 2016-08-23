User.create!(name:  'sameesh',
             email: 'sameesh.fisat@gmail.com',
             password:              'sameesh',
             password_confirmation: 'sameesh')
User.create!(name:  'mebin',
             email: 'mebinthomasmalpan@gmail.com',
             password:              'mebinthomas',
             password_confirmation: 'mebinthomas')

=begin

99.times do |n|
    name = Faker::Name.name
    email = "example-#{n + 1}@railstutorial.org"
    password = 'password'
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password)
    end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end

=end