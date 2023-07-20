class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  enum :role, [:normal, :ejecutivo, :admin]

  has_many :pets
  has_many :matches
  has_many_attached :images
end
