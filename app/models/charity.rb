class Charity < ApplicationRecord
  validates :name, :category, :description, presence: true
  validates :name, length: { maximum: 200 }
  validates :category, length: { maximum: 200 }
  validates :description, length: { maximum: 5000 }
  
  has_many :tasks, dependent: :destroy
end
