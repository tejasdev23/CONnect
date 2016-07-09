class User < ActiveRecord::Base

	before_save {self.email=email.downcase} 
	
	#attr_accessor :password
	validates :name,presence: true,length: {maximum: 50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i   for not allowing double dots in email
	validates :email,presence: true,uniqueness: true,format: {with: VALID_EMAIL_REGEX},length: {maximum: 255}
	validates :password,presence: true,length: {minimum: 6}
	has_secure_password
	

end
