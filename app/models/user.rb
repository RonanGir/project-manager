class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :tasks
  has_many :user_teams
  has_many :teams, through: :user_teams
  has_many :projects, through: :teams

  validates :firstname, :lastname, :email, presence: true, on: :update

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
