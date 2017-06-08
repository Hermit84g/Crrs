class Cr < ApplicationRecord
  belongs_to :user
  default_scope -> {order(created_at: :desc)}
  validates :Accused, presence: true


end
