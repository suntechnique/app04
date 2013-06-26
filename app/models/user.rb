class User < ActiveRecord::Base
	#include Paperclip::Glue

	attr_accessible :name, :email, :password, :password_confirmation, :tabel, :secure_type, :avatar
	has_attached_file :avatar
	has_many :UserCard
	has_secure_password

	#before_save { |user| user.email = email.downcase }
	before_save :create_remember_token

	#validates :name, presence: true, length: { maximum: 61 }
	#VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	#validates :email, presence:   true, format:     { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	#validates :password, presence: true, length: { minimum: 8 }
	#validates :password_confirmation, presence: true

	#validates :email, format:     { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	#validates :password, length: { minimum: 0 }
	#validates :password_confirmation

	private
	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end

end