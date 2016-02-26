class Event < ActiveRecord::Base
	#user many-to-many associations
	has_many :userfollowevents
	has_many :userevents, through: :userfollowevents, source: :user
end
