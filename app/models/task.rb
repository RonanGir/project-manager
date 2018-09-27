class Task < ApplicationRecord
  belongs_to :projects, dependent: :destroy
  belongs_to :users, dependent: :destroy

  validates :name, :description, :tag, presence: true
end
