class Level < ApplicationRecord

  has_many :questions
  belongs_to :course

  #Scopes
  # scope :ruby, -> { where(id: 1..4) }
  # scope :ruby, -> { joins(:course).merge(Course.where(id: 1)) }
  # scope :info, -> { where(id: 5..8) }
  scope :course_of, -> (id) { joins(:course).merge(Course.where(id: id)) }
end
