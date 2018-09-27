class Project < ApplicationRecord
  has_many :users
  has_many :tasks

  validates :name, :description, :tag, presence: true
end
