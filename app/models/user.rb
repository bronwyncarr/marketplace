class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  # # Allows users to create a task
  has_many :tasks

  belongs_to :role, optional: true

  # Allows users to register expression of interest
  has_many :interests, dependent: :destroy

  before_save :assign_role

  def assign_role
    if role.nil?
      self.role = Role.find_by name: 'user'
    end
  end

  def admin?
    role.name == 'admin'
  end

  def user?
    role.name == 'user'
  end

end
