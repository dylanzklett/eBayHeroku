class User < ActiveRecord::Base
	#Event many-to-many associations
	has_many :attendance
	has_many :events, through: :attendance

	#card one-to-many associations
	has_many :cards

	#email validations
	validates_presence_of :email, on: :create

	#password validations
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
end
