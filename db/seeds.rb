# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
o = Owner.create(email: "abc@gmail.com", password: "az", password_confirmation: "az")

# Club 1
c = Club.create(name: "Xs", city: "Las Vegas", address: "Las Vegas Strip",
      description: "Best Nightclub in the World", owner_id: o.id, photo: "xs.jpg")
Photo.create(club_id: c.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459933276/adnavtnnesgllslshg50.jpg")
Photo.create(club_id: c.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459933309/vfnlu3bvgxmdniwmj9j2.jpg")
Photo.create(club_id: c.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459942119/scxgnuljvoi2zd3clv1h.jpg")

e = Event.create(club_id: c.id, starts_at: "2016-5-27",
    description: "Yellow Claw from Amsterdam", event_type: "DJ playing wide genre",
    dress_code: "Casual")
Photo.create(event_id: e.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459943569/xd44lxpuwmjuf6insbda.jpg")
Photo.create(event_id: e.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459943542/xpgw8i8oarwvjx5kffpi.jpg")
Photo.create(event_id: e.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459943520/pk6fjaalwyivzy3nlcg6.png")

e1 = Event.create(club_id: c.id, starts_at: "2016-5-9",
    description: "David Guetta", event_type: "French DJ and Remixer",
    dress_code: "Casual")
Photo.create(event_id: e1.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459944537/po8vl9a6roljivi70gmy.jpg")
Photo.create(event_id: e1.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459944514/zco5dxutbaxliisjj8xp.jpg")
Photo.create(event_id: e1.id, remote_photo_url: "http://res.cloudinary.com/pbarua/image/upload/v1459944496/ptia77casyk2ryg39n3z.jpg")
# Event.create(club_id: ex_club.id, starts_at: DateTime.new(2016, 4, 15) )



