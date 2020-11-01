2.times do
  user = User.create(name: FAKER::Funnyname.name, email: FAKER::Internet.email, password: "123")
end
