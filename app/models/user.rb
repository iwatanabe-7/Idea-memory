class User < ApplicationRecord
  has_many :mandalas, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable
  validates :encrypted_password, presence: true
end
