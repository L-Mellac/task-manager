class Day < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_one_attached :highlight

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :name, :highlight, :day_date ],
  associated_against: {
    tasks: [ :description ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
