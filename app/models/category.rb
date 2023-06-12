class Category < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :color, allow_nil: true, format: { with: /#([0-9a-f]{6}|[0-9a-f]{3})/i }
end
