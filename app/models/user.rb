class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :recoverable, :registerable, :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :validatable

  validates :email, presence: true, uniqueness: true
end
