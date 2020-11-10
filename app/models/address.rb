class Address < ApplicationRecord
  # Allows each address to have one or many tasks.
  has_many :tasks, dependent: :destroy

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [street_add, suburb, state, country].compact.join(', ')
  end
end
