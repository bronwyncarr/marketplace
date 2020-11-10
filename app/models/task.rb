class Task < ApplicationRecord
  include Searchable

  # validates the minimum required fields are not blank and sets maximun values
  validates_presence_of :title, :summary, :hours, :date
  validates :summary, length: { in: 10..1000 }
  validates :description, length: { maximum: 5000 }
  validates :hours, numericality: { only_integer: true, less_than: 24 }  
  validates_date :date, on_or_after: lambda { Date.current }

  # # Allows users to create a task
  # belongs_to :user
  
  # Allows users to sign up for many tasks as an EOI
  has_many :user_tasks
  has_many :users, through: :user_tasks

  # Allows many skills skills to be set for each task.
  has_many :required_skills
  has_many :skills, through: :required_skills

  # Allows each task to have an address and the address will be deleted with the task.
  belongs_to :address

  # Allows users to create a new task without double ups.
  # def skills_attributes=(skill_attributes)
  #   skill_attributes.values.each do |skill_attribute|
  #     skill = Skill.find_or_create_by(skill_attribute)
  #     self.skills << skill
  #   end
  # end

  # Allows users to add an image and reference a charity when creating a task.
  has_one_attached :image
  belongs_to :charity
  accepts_nested_attributes_for :charity

  # Acope for searching
  scope :search_by_title, -> (title) { where('title ILIKE ?', "%#{title}%") } 
  scope :search_by_skills, -> (skill_ids) { joins(:skills).merge(Skill.where(id: skill_ids)) }
end
