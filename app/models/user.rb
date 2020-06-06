class User < ApplicationRecord
  
    has_many :articles
    has_many :comments
  
    before_save {self.email = email.downcase}
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, length: { maximum: 105 },uniqueness: { case_sensitive: false },format: { with: VALID_EMAIL_REGEX }
  

  has_secure_password 

  VALID_PRN_REGEX = /\A(?=.*[a-z])[a-z\d]+\Z/i

  validates :prn_number, presence: true , length: {maximum: 15}, uniqueness: { case_sensitive: true } , format: {with: VALID_PRN_REGEX }
	
end
