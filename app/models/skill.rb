class Skill < ApplicationRecord
  has_many :required_skill
  has_many :tasks, through: :required_skill
end
