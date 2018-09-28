class UserTeam < ApplicationRecord
  has_many :users
  belongs_to :team
end
