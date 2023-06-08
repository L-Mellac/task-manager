class Task < ApplicationRecord
  belongs_to :day
  has_one :category

  validates :description, presence: true
  validates :priority, presence: true, numericality: { only_integer: true, in: (1..5) }

  include PgSearch::Model
  multisearchable against: [:description, :completed, :priority]

end
