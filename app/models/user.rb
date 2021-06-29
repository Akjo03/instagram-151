class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :likes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }
end