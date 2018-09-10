# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
MeetUp.destroy_all
UserMeetUp.destroy_all

kenny = User.new(name: "Kenny Yang", email: "kenny.yang@flatironschool.com", bio: "CODE OR DIE!")
derek = User.new(name: "Derek Silva", email: "derek.silvag@flatironschool.com", bio: "CODE OR DIE!")
chris = User.new(name: "Chris Arnold", email: "christopher.arnold@flatironschool.com", bio: "CODE OR DIE!")

kenny.save
derek.save
chris.save 

javascript_meetup = MeetUp.create(name: "JavaScript Meet Up", topic: "Vanilla JavaScript", address: "708 Main St.", time:"7:00 PM")

javascript_meetup.save

javascript_user_meet_up = UserMeetUp.create(meet_up_id: javascript_meetup.id, user_id: kenny.id)

javascript_user_meet_up.save