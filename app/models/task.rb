class Task < ApplicationRecord
  belongs_to :charity
  accepts_nested_attributes_for :charity
  has_many :users, through: :eois
end
