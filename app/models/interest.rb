class Interest < ApplicationRecord
  belongs_to :user
  belongs_to :task

  # Scope to return current/upcoming or previous Interests
  scope :current, -> {joins(:task).merge(Task.current)}
  scope :previous, -> {joins(:task).merge(Task.previous)}
end
