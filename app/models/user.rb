class User < ApplicationRecord
  validates :username, :email, presence: true
  validates :password, :password_confirmation, presence: true, on: :create
  validates :password, confirmation: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :validatable
    # roles
    def admin?
      type == 'Admin'
    end
    def viewer?
      type == 'Viewer'
    end
    def editor?
      type == 'Editor'
    end 
  end