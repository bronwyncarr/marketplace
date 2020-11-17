class Task < ApplicationRecord
  include Searchable

  # validates the minimum required fields are not blank and sets maximun values
  validates :title, :summary, :hours, :date, presence: true
  validates :summary, length: { in: 10..1000 }
  validates :description, length: { maximum: 5000 }
  validates :hours, numericality: { less_than: 24 }
  # validates_date :date, on_or_after: -> { Date.current }

  # # Allows users to create a task
  belongs_to :user

  # Allows users to sign up for many tasks as an EOI
  has_many :interests, dependent: :destroy

  # Allows many skills skills to be set for each task.
  has_many :required_skills, dependent: :destroy
  has_many :skills, through: :required_skills

  # Allows each task to have an address.
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address

  # Seperate upcoming and past dates
  scope :current, -> { where("date >= ?", Date.current) }
  scope :previous, -> { where("date <= ?", Date.current) }

  # Allows users to add an image
  has_one_attached :image

  # Allows each task to have a charity.
  belongs_to :charity
  accepts_nested_attributes_for :charity

  # Acope for searching
  scope :search_by_title, ->(title) { where('title ILIKE ?', "%#{title}%") }
  scope :search_by_skills, ->(skill_ids) { joins(:skills).merge(Skill.where(id: skill_ids)) }
end
