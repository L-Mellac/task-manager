class Task < ApplicationRecord
  belongs_to :day
  belongs_to :category, optional: true

  validates :description, presence: true
  # validates :priority, presence: true, numericality: { only_integer: true, in: (1..3) }
end
