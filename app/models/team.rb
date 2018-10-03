class Team < ApplicationRecord
  # has_many :users, through: :user_teams
  has_many :projects

  validates :name, presence: :true
end
