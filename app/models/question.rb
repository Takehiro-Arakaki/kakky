class Question < ApplicationRecord
  
  belongs_to :level
  has_many :select,    dependent: :destroy

end
