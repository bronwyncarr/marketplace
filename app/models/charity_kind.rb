class CharityKind < ApplicationRecord
  validates :name, presence: true
  has_many :charities, dependent: :destroy
end
