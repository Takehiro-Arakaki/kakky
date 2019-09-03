class User < ApplicationRecord

  # NOTE:これだけでデータベースのカラムには対応しない二つの属性
  # (password,password_confirmation)属性が生成される
  has_secure_password

  #Scopes
  default_scope { order(:id) }

  #Validations
  # validates  :name, :email, :password_digest

end
