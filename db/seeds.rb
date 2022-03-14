AppAdmin.find_or_create_by(name: 'AppAdmin') do |user|
  user.name = 'AppAdmin'
  user.email = 'app_admin@app.com'
  user.password = 'Password123'
end