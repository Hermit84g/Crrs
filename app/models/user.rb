class User < ApplicationRecord
    has_secure_password
    has_many :crs, foreign_key: 'user_id'

    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
	  validates :Uid, presence: true, uniqueness: true, length:{is: 8}

  def feed
    Cr.where("user_id = ?", id)
  end

end

