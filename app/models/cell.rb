class Cell < ApplicationRecord
  belongs_to :mandala
  default_scope -> { order(created_at: :desc) }
end
