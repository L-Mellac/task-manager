class Day < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_one_attached :highlight

  include PgSearch::Model
  multisearchable against: [:highlight, :name]

end
