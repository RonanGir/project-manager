class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user

  validates :name, :description, :tag, presence: true
end
