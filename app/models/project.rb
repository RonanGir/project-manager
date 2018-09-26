class Project < ApplicationRecord
  has_many :workers

  validates :name, :description, :tag, presence: true
end
