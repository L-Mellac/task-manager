class Day < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  include PgSearch::Model
  multisearchable against: [:highlight, :name]
end
