class User < ApplicationRecord
  has_many :days
  has_many :tasks, through: :days
  has_many :categories, through: :tasks

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
