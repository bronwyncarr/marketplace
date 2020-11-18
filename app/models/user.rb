class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

  has_many :organisers, dependent: :destroy
  has_many :charities, through: :organisers

  belongs_to :role, optional: true

  # Allows users to register expression of interest
  has_many :interests, dependent: :destroy

  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: 'general' if role.nil?
  end

  def admin?
    role.name == 'admin'
  end

  def organiser?
    role.name == 'organiser'
  end

  def general?
    role.name == 'general'
  end
end
