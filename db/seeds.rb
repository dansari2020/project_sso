# frozen_string_literal: true

owner = User.create!(
  email: 'user@example.com',
  password: '123456',
  password_confirmation: '123456'
)

app = Doorkeeper::Application.create!(
  name: 'LeanSSO Client',
  redirect_uri: "#{ENV['CALLBACK_CLIENT_URL']}users/auth/doorkeeper/callback",
  owner: owner
)

puts 'Application: '
puts "name: #{app.name}"
puts "redirect_uri: #{app.redirect_uri}"
puts "uid: #{app.uid}"
puts "secret: #{app.secret}"
