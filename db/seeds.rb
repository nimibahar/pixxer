# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ex_owner = Owner.create(email: "blablabla@gmail.com", password: "12", password_confirmation: "12")


ex_club = Club.create(name: "Lavo", city: "New York", owner_id: ex_owner.id)

Event.create(club_id: ex_club.id, starts_at: DateTime.new(2016, 4, 15) )



