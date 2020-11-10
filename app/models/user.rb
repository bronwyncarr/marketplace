class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  # # Allows users to create a task
  # has_many :tasks

  # Allows users to register expression of interest
  has_many :user_tasks, dependent: :destroy
  has_many :tasks, through: :user_tasks
end
