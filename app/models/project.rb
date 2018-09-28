class Project < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :tasks, dependent: :destroy

  validates :name, :description, :tag, presence: true
end
