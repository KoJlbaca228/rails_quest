class Mission < ApplicationRecord
  enum :status, {
    assigned: "assigned",
    in_progress: "in_progress",
    completed: "completed"
  }

  belongs_to :agent

  validates :title, presence: true
  validates :status, presence: true
end
