class User < ApplicationRecord
    has_secure_password
    before_save {self.email = email.downcase}
    validates :firstName, presence: true
    validates :lastName, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255},
            format: { with: VALID_EMAIL_REGEX},
            uniqueness: { case_sensitive: false }
    #validates :password, presence: true, length: {minimum: 8}
    has_one :profile, dependent: :destroy
end
