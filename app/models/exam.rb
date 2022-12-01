class Exam < ApplicationRecord
  belongs_to :user
  has_many :descriptions
end
