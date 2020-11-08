class RequiredSkill < ApplicationRecord
  belongs_to :task
  belongs_to :skill
end
