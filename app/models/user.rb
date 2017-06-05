class User < ApplicationRecord
    has_secure_password
    has_many :crs, foreign_key: 'user_id'
end
