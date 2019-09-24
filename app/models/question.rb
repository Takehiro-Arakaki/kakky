class Question < ApplicationRecord

  belongs_to :level
  has_many :question_selects,    dependent: :destroy

  # Scope
  # FIXME: defaut_scopeをつけてconrtollerのorderを削除する
  # default_scope :where{ order(:id) }
end
