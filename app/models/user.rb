class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }
    validates :email, presence: true, uniqueness: true, length: { maximum: 105 }
    validates :password, presence: true, length: { minimum: 6, maximum: 25 }
end
