class Charity < ApplicationRecord
  validates_presence_of :name, :category, :description
  validates :name, length: { maximum: 200 }
  validates :category, length: { maximum: 200 }
  validates :description, length: { maximum: 5000 }
  has_many :tasks
end
