class Charity < ApplicationRecord
  validates :name, :description, presence: true
  validates :name, length: { maximum: 500 }
  validates :description, length: { maximum: 5000 }

  has_many :tasks, dependent: :destroy

  has_many :organisers, dependent: :destroy
  has_many :users, through: :organisers

  belongs_to :charity_kind
  has_one_attached :image
end
