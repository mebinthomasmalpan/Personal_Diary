User.create!(name:  'example',
             email: 'example@gmail.com',
             password:              'example',
             password_confirmation: 'example')

99.times do |n|
    name = Faker::Name.name
    email = "example-#{n + 1}@railstutorial.org"
    password = 'password'
    User.create!(name:  name,
                 email: email,
                 password:              password,
                 password_confirmation: password)
    end