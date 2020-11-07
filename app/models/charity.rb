class Charity < ApplicationRecord
  validates_presence_of :name, :category, :description
  validates :name { maximum: 100 }
  validates :category { maximum: 100 }
  validates :description, length: { maximum: 1000 }
  has_many :tasks
end
