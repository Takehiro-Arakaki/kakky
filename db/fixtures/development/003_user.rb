User.destroy_all

user_params = [
  { email: 'take@co.jp', role: 'admin', password: ENV.fetch("RUBY_APP_ADMIN_PASSWORD") }
]
User.create!(user_params)