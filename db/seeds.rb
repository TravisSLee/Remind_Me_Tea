2.times do
  user = User.create(username: Faker::Name.name, email: Faker::Internet.email, password: "123")
end
