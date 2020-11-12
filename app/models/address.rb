class Address < ApplicationRecord
  validates :street_add, :suburb, presence: true
  validates :street_add, :suburb, :state, :country, length: { maximum: 500 }
  
  # Allows each address to have one or many tasks.
  belongs_to :task

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [street_add, suburb, state, country].compact.join(', ')
  end
end
