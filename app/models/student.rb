class Student < ApplicationRecord 
  has_secure_password
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { minimum: 5, maximum:50 }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { minimum: 5, maximum: 105 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
end