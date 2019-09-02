class Question < ApplicationRecord
  
  belongs_to :level
  has_many :question_selects,    dependent: :destroy

end
