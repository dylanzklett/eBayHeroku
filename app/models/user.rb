class User < ActiveRecord::Base
	#email validations
	validates_presence_of :email, on: :create

	#password validations
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create
end
