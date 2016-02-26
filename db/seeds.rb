# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

	@events = Event.create([{venue: "George R Brown Convention Center", event_name: "Grand Prix Houston", event_type: "Grand Prix", format:"Standard", admin:true, date:"February 26th- February 28th"},{venue: "Cobo Hall", event_name: "Grand Prix Detroit", event_type: "Grand Prix", format:"Modern", admin:true, date:"March 4th - March 6th"},{venue: "Walter Washington Convention Center", event_name: "Grand Prix Washington D.C.", event_type: "Grand Prix", format:"Team Limited", admin:true, date:"March 11th - March 13th"},{venue: "Albuquerque Convention Center", event_name: "Grand Prix Albuquerque", event_type: "Grand Prix", format:"Limited", admin:true, date:"April 15th- April 17th"},{venue: "Meadowlands Exposition Center", event_name: "Grand Prix New York", event_type: "Grand Prix", format:"Standard", admin:true, date:"May 6th - May 8th"}])
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
