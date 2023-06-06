class Task < ApplicationRecord
  belongs_to :day
  has_one :category

  validates :description, presence: true
  validates :priority, presence: true, numericality: { only_integer: true, in: (1..5) }
end
