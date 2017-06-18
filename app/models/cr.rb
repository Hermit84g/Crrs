class Cr < ApplicationRecord
  belongs_to :user

  default_scope -> {order(created_at: :desc)}
  validates :Accused, presence: true

  def self.search(search)
    if search
      Cr.where(['id LIKE ?', "%#{search}%"])
    else
      Cr.all
    end
  end

end
