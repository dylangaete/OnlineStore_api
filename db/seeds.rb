require 'bcrypt'

user = User.find_or_create_by(email: Faker::Internet.email) do |u|
  u.name = Faker::Name.name
  password = '1234'
  u.password = BCrypt::Password.create(password)
  puts "Usuario: #{u.email}, Contraseña: #{password}"
end

1.times do
  user.shops.find_or_create_by(name: Faker::Company.name)
end

# ...
