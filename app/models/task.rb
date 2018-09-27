class Task < ApplicationRecord
  belongs_to :projects
  belongs_to :users

  validates :name, :description, :tag, presence: true
end
