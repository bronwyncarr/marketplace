class Task < ApplicationRecord
  validates_presence_of :title, :summary, :hours, :date
  validates :summary, length: { in: 10..100 }
  validates :description, length: { maximum: 1000 }
  validates :hours, numericality: { only_integer: true, less_than: 24 }  
  validates_date :date, on_or_after: lambda { Date.current }
  belongs_to :charity
  accepts_nested_attributes_for :charity
  has_many :users, through: :eois
end
