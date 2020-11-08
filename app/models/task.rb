class Task < ApplicationRecord
  include Searchable

  validates_presence_of :title, :summary, :hours, :date
  validates :summary, length: { in: 10..1000 }
  validates :description, length: { maximum: 5000 }
  validates :hours, numericality: { only_integer: true, less_than: 24 }  
  validates_date :date, on_or_after: lambda { Date.current }

  has_many :user_tasks
  has_many :users, through: :user_tasks
  has_many :required_skills
  has_many :skills, through: :required_skills
  
  has_one_attached :image
  belongs_to :charity
  accepts_nested_attributes_for :charity

  scope :search_by_title, -> (title) { where('title ILIKE ?', "%#{title}%") } 

  # scope :search_by_author, -> (author) { joins(:authors).merge(Author.where('authors.name ILIKE ?', "%#{author}%")) }
  # scope :search_by_categories, -> (category_ids) { joins(:categories).merge(Category.where(id: category_ids)) }
end
