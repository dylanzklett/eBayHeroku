class User < ActiveRecord::Base
	#Event many-to-many associations
	has_many :userfollowevents, foreign_key: :user_id, dependent: :destroy
	has_many :userevents, through: :userfollowevents, source: :event, dependent: :destroy

	#card one-to-many associations
	has_many :cards, dependent: :destroy

	#email validations
	validates_presence_of :email, on: :create
	validates_uniqueness_of :email, on: :create

	#password validations
	has_secure_password
	validates_confirmation_of :password
	validates_presence_of :password, on: :create

	#enables messaging through Mailboxer gem
	# acts_as_messageable
end
