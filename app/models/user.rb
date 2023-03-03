class User < ApplicationRecord
  has_many :items
  has_many :rentings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, presence:true
  validates :last_name, presence:true
end
