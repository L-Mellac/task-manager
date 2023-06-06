class Task < ApplicationRecord
  belongs_to :day
  belongs_to :category
  belongs_to :user, through: :day

  validates :description, presence: true
  validates :priority, presence: true, numericality: { only_integer: true, in: (1..5) }
  validates :completed, presence: true
end
