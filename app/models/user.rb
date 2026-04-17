class User < ApplicationRecord
  validates :name, presence: true, length: { in: 2..50 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :dob, presence: true 
  validates :phone, presence: true, numericality: { only_integer: true }, length: { in: 10..15 }
end
