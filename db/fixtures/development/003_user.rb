User.destroy_all

user_params = [
  { email: 'take@co.jp', role: 'admin', password: 'Take1308' }
]
User.create!(user_params)