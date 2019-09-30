class Question < ApplicationRecord

  belongs_to :level
  has_many :question_selects, dependent: :destroy
  # 親から子を作成したり保存したりする
  accepts_nested_attributes_for :question_selects, allow_destroy: true

  # Scope
  default_scope { order(:id) }
end
