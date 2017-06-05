class Cr < ApplicationRecord
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  validates :user_id, presence: true, length:{maximum:8}
  validates :Accused, presence: true
end
