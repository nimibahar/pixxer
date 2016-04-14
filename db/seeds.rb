# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Booking.destroy_all
Photo.destroy_all
Table.destroy_all
Event.destroy_all
Club.destroy_all
User.destroy_all
Owner.destroy_all

p Rails.env
o = Owner.create(email: "abc@gmail.com", password: "az", password_confirmation: "az")
u1 = User.create(email: "user1@gmail.com", password: "az", password_confirmation: "az", first_name: "Samuel", last_name: "Jackson", picture: "user1.jpg")
u2 = User.create(email: "user2@gmail.com", password: "az", password_confirmation: "az", first_name: "Julia", last_name: "Roberts", picture: "user2.jpg")
u3 = User.create(email: "user3@gmail.com", password: "az", password_confirmation: "az", first_name: "Kim", last_name: "Kardhasian", picture: "user3.jpg")
# Club 1
c = Club.create(name: "Xs", city: "Las Vegas", address: "Las Vegas Strip",
      description: "THE Nightclub in Vegas", owner_id: o.id)
Photo.create(club_id: c.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459933276/adnavtnnesgllslshg50.jpg"))
sleep(1)
Photo.create(club_id: c.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459933309/vfnlu3bvgxmdniwmj9j2.jpg"))
sleep(1)
Photo.create(club_id: c.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459942119/scxgnuljvoi2zd3clv1h.jpg"))
sleep(1)
e = Event.create(club_id: c.id, starts_at: "2016-5-27",
    description: "Yellow Claw from Amsterdam", event_type: "DJ playing wide genre",
    dress_code: "Smart", artist: "Avicii")

Photo.create(event_id: e.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459943569/xd44lxpuwmjuf6insbda.jpg"))
sleep(1)
# Photo.create(event_id: e.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459943542/xpgw8i8oarwvjx5kffpi.jpg"))
# sleep(1)
# Photo.create(event_id: e.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459943520/pk6fjaalwyivzy3nlcg6.png"))

5.times do |d|
  Table.create(seats: 10, available_seats: 10, price: 1000, per_seat: 100, payment_status: "empty", preferences: "Whisky, Rum, Cocktails", event_id: e.id)
end
5.times do |d|
  Table.create(seats: 5, available_seats: 5, price: 1200, per_seat: 240, payment_status: "empty", preferences: "Champagne", event_id: e.id)
end
5.times do |d|
  Table.create(seats: 15, available_seats: 15, price: 900, per_seat: 60, payment_status: "empty", preferences: "Beer", event_id: e.id)
end
e1 = Event.create(club_id: c.id, starts_at: "2016-5-9",
    description: "High end party", event_type: "French DJ and Remixer",
    dress_code: "Smart", artist: "David Guetta")
Photo.create(event_id: e1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459944537/po8vl9a6roljivi70gmy.jpg"))
sleep(1)
Photo.create(event_id: e1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459944514/zco5dxutbaxliisjj8xp.jpg"))
sleep(1)
Photo.create(event_id: e1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1459944496/ptia77casyk2ryg39n3z.jpg"))

# Event.create(club_id: ex_club.id, starts_at: DateTime.new(2016, 4, 15) )

5.times do |d|
  Table.create(seats: 10, available_seats: 10, price: 1000, per_seat: 100, payment_status: "empty", preferences: "Whisky, Rum, Cocktails", event_id: e1.id)
end
5.times do |d|
  Table.create(seats: 5, available_seats: 5, price: 1200, per_seat: 240, payment_status: "empty", preferences: "Champagne", event_id: e1.id)
end
5.times do |d|
  Table.create(seats: 15, available_seats: 15, price: 900, per_seat: 60, payment_status: "empty", preferences: "Beer", event_id: e1.id)
end

c1 = Club.create(name: "Tao", city: "Las Vegas", address: "Las Vegas Strip",
      description: "In the Venetian", owner_id: Owner.last)
Photo.create(club_id: c1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460540439/wrxaa61mpe0syuvons2a.jpg"))
sleep(1)
Photo.create(club_id: c1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460540882/k2kj84ymrufqf0qstu9t.jpg"))
sleep(1)
Photo.create(club_id: c1.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460540990/qzaeoqc1a5vd0qflliuf.jpg"))
sleep(1)

c2 = Club.create(name: "Wet Republic", city: "Las Vegas", address: "Las Vegas Strip",
      description: "In the MGM Grand", owner_id: Owner.last)
Photo.create(club_id: c2.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460541107/fz2v8cjmr9mt6etwve0g.jpg"))
sleep(1)
Photo.create(club_id: c2.id, photo: open("http://res.cloudinary.com/pbarua/image/upload/v1460541080/uxz2rtmrso0ozjftz5le.jpg"))
sleep(1)
