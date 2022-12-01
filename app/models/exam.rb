class Exam < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy

  validates :exam_name, presence: true, uniqueness: true
  validates :area, presence: true, uniqueness: true
  validates :description, presence: true, uniqueness: true
end
