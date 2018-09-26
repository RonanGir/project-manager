class Project < ApplicationRecord
  has_many :workers
  has_many :tasks

  validates :name, :description, :tag, presence: true
end
