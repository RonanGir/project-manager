class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :tasks
  # has_many :user_teams
  # belongs_to :project, through: :team

  validates :firstname, :lastname, :email, presence: true, on: :update

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
