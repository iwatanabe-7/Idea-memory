class Mandala < ApplicationRecord
  belongs_to :user
  has_many :cells, dependent: :destroy
  accepts_nested_attributes_for :cells, allow_destroy: true
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
end
