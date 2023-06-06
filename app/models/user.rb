class User < ApplicationRecord
  has_many :days, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :tasks, through: :days

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
