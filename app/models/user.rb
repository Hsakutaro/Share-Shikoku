class User < ApplicationRecord
    before_save { self.email.downcase! }
    VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
    
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                      uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 4 },
                         format: { with: VALID_PASSWORD_REGEX }


    has_secure_password
    
    has_many :posts
    has_many :prefectures
end
