class Level < ApplicationRecord

  has_many :questions
  belongs_to :course

end
