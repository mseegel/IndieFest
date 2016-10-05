require 'bcrypt'
class User < ActiveRecord::Base
  attr_accessor :password
  before_save :encrypt_password
  has_many :films
  has_many :reviews
  has_many :comments

  def self.authenticate(email, password)
    user = find_by_email(email)
    if BCrypt::Password.new(user.password_hash) == password
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_hash = BCrypt::Password.create(password)
    end
  end
end
