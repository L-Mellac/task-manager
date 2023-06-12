class Day < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :name, :highlight ],
  associated_against: {
    tasks: [ :description ]
  },
  using: {
    tsearch: { prefix: true }
  }

end
