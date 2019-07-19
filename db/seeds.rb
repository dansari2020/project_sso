owner = User.create!(
  email: 'user@mail.com',
  password: 'doorkeeper',
  password_confirmation: 'doorkeeper'
)

app = Doorkeeper::Application.create!(
  name: 'Client',
  redirect_uri: 'https://localhost:3001/callback',
  owner: owner
)

puts 'Application: '
puts "name: #{app.name}"
puts "redirect_uri: #{app.redirect_uri}"
puts "uid: #{app.uid}"
puts "secret: #{app.secret}"
