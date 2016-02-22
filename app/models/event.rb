class Event < ActiveRecord::Base
	#user many-to-many associations
	has_many :attendance
	has_many :users, through: :attendance
end
