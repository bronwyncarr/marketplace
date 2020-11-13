class CharityKind < ApplicationRecord
  validates :name, presence: true
  has_many :charities, allow_destroy: true
end
