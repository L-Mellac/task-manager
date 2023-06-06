class Category < ApplicationRecord
  has_many :tasks
  belongs_to :user, through: :task

  validates :name, presence: true
end
