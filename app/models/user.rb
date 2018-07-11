class User < ApplicationRecord
  has_secure_password
  has_many :user_answers
  has_many :answers, through: :user_answers
end
