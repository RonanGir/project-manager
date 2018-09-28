class Project < ApplicationRecord
  belongs_to :team, dependent: :destroy
  has_many :tasks, dependent: :destroy

  validates :name, :description, :tag, presence: true
end
