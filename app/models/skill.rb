class Skill < ApplicationRecord
  has_many :required_skills, dependent: :destroy
  has_many :tasks, through: :required_skills
end
