class Exam < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
