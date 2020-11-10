class Skill < ApplicationRecord
  has_many :required_skills
  has_many :tasks, through: :required_skills
end
