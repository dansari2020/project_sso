# frozen_string_literal: true


owner = User.find_by(email: 'user@example.com') || User.create!(
  email: 'user@example.com',
  password: 'doorkeeper',
  password_confirmation: 'doorkeeper'
)

app = Doorkeeper::Application.create!(
  name: 'ProjectSSO Client',
  redirect_uri: "#{ENV['CALLBACK_CLIENT_URL']}users/auth/doorkeeper/callback",
  owner: owner
)

puts 'Application: '
puts "name: #{app.name}"
puts "redirect_uri: #{app.redirect_uri}"
puts "uid: #{app.uid}"
puts "secret: #{app.secret}"
