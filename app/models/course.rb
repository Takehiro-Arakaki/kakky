class Course < ApplicationRecord
  has_many :levels

  # enumにする場合
  # しかし↓↓これはクラスメソッドでidがオーバーライドしてしまうため怒られる
  # enum id: { ruby: 1, info: 2}
end
