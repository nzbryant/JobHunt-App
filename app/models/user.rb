require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :email, :encrypted_password, :github, :name, :password, 
  :password_confirmation, :photo, :password_hash, :password_salt

  has_many :jobs

 	attr_accessible :email, :password, :password_confirmation

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :name


  def authenticate(password)
    if self.password_hash == BCrypt::Engine.hash_secret(password, self.password_salt)
      self
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
