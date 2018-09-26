class Project < ApplicationRecord
  has_many :workers

  validates :name, :description, :type
end
