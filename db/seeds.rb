# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Meetup.destroy_all
UserMeetup.destroy_all

kenny = User.new(first_name: "Kenny", last_name: "Yang", user_name: "ky17", email: "kenny.yang@flatironschool.com")
derek = User.new(first_name: "Derek", last_name: "Silva", user_name: "flexlutherr", email: "derek.silvag@flatironschool.com")
chris = User.new(first_name: "Chris", last_name: "Arnold", user_name: "codefreak", email: "christopher.arnold@flatironschool.com")

kenny.save
derek.save
chris.save 

javascript_meetup = Meetup.create(topic: "Vanilla JavaScript", address: "708 Main St.", description:"You will have a good time", date: 'September 11, 2018', start_time: '7:00 PM', end_time: '8:00 PM')

javascript_meetup.users << kenny

# javascript_user_meet_up = UserMeetUp.create(meet_up_id: javascript_meetup.id, user_id: kenny.id)

# javascript_user_meet_up.save