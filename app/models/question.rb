class Question < ApplicationRecord
  belongs_to :exam
  has_many :answers

  validates :question, presence: true
end
